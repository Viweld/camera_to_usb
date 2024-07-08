import 'dart:async';
import 'dart:io';

import 'package:camera/camera.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:path_provider/path_provider.dart';

import 'camera_property.dart';

part 'camera_bloc.freezed.dart';

enum CamState {
  loading,
  ready,
  rec,
  pause,
}

@freezed
class CameraEvent with _$CameraEvent {
  const CameraEvent._();

  const factory CameraEvent.init() = _Init;

  const factory CameraEvent.rec() = _Rec;

  const factory CameraEvent.pause() = _Pause;

  const factory CameraEvent.stop() = _Stop;

  const factory CameraEvent.shiftCam({required int camIndex}) = _Shift;
}

@freezed
class CameraState with _$CameraState {
  const CameraState._();

  const factory CameraState.valueObject({
    CameraProperty? camProperty,
    String? question,
    @Default(CamState.loading) CamState camState,
    @Default(0) int recTime,
    XFile? recorded,
  }) = _State;
}

class CameraBloc extends Bloc<CameraEvent, CameraState> {
  Timer? _timer;

  CameraBloc() : super(const CameraState.valueObject()) {
    on<CameraEvent>((event, emitter) => event.map(
          init: (e) => _init(e, emitter),
          rec: (e) => _rec(e, emitter),
          pause: (e) => _pause(e, emitter),
          stop: (e) => _stop(e, emitter),
          shiftCam: (e) => _shift(e, emitter),
        ));

    add(const CameraEvent.init());
  }

  Future<void> _init(
    _Init event,
    Emitter<CameraState> emit,
  ) async {
    try {
      final cameras = state.camProperty?.cameras ?? await availableCameras();
      final camProperty = await _initializeCamera(cameras, 1);
      emit(
        state.copyWith(
          camState: CamState.ready,
          camProperty: camProperty,
        ),
      );
    } catch (e) {
      rethrow;
    }
  }

  void _rec(
    _Rec event,
    Emitter<CameraState> emitter,
  ) {
    final camProperty = state.camProperty;
    if (camProperty == null) return;
    if (camProperty.controller.value.isRecordingVideo) return;
    emitter(state.copyWith(camState: CamState.rec));
    state.camProperty?.controller.startVideoRecording();
    _startTimer(emitter);
  }

  void _pause(
    _Pause event,
    Emitter<CameraState> emitter,
  ) {
    final camProperty = state.camProperty;
    if (camProperty == null) return;
    if (camProperty.controller.value.isRecordingPaused) {
      _startTimer(emitter);
      state.camProperty?.controller.resumeVideoRecording();
      emitter(state.copyWith(camState: CamState.rec));
    } else {
      _timer?.cancel();
      state.camProperty?.controller.pauseVideoRecording();
      emitter(state.copyWith(camState: CamState.pause));
    }
  }

  Future<void> _stop(
    _Stop event,
    Emitter<CameraState> emitter,
  ) async {
    final camProperty = state.camProperty;
    if (camProperty == null) return;
    if (!camProperty.controller.value.isRecordingVideo) return;
    _timer?.cancel();
    final extDir = await getApplicationDocumentsDirectory();
    final dirPath = '${extDir.path}/Movies/flutter_camera';
    await Directory(dirPath).create(recursive: true);
    final filePath =
        '$dirPath/${DateTime.now().millisecondsSinceEpoch.toString()}.mp4';
    final file = await state.camProperty?.controller.stopVideoRecording();
    await file?.saveTo(filePath);
    emitter(
      state.copyWith(
        recorded: file,
        recTime: 0,
        camState: CamState.ready,
      ),
    );
  }

  Future<void> _shift(
    _Shift event,
    Emitter<CameraState> emitter,
  ) async {
    final camProperty = state.camProperty;
    if (camProperty == null) return;
    if (camProperty.controller.value.isRecordingVideo) return;
    await Future.delayed(const Duration(milliseconds: 400));
    try {
      emitter(state.copyWith(camState: CamState.loading));
      await state.camProperty?.controller.dispose();
      final camProperty = state.camProperty;
      if (camProperty == null) {
        return;
      }
      final newCamProperty = await _initializeCamera(
        camProperty.cameras,
        event.camIndex,
      );
      emitter(
        state.copyWith(
          camState: CamState.ready,
          camProperty: newCamProperty,
        ),
      );
    } catch (e) {
      rethrow;
    }
  }

  Future<CameraProperty> _initializeCamera(
    List<CameraDescription> cameras,
    int camIndex,
  ) async {
    final controller = CameraController(
      cameras[camIndex],
      ResolutionPreset.veryHigh,
    );

    await controller.initialize();
    await controller.unlockCaptureOrientation();
    final minZoom = await controller.getMinZoomLevel();
    final maxZoom = await controller.getMaxZoomLevel();
    return CameraProperty(
      cameras: cameras,
      camCount: cameras.length,
      camIndex: camIndex,
      controller: controller,
      minZoom: minZoom,
      maxZoom: maxZoom,
    );
  }

  void _startTimer(Emitter<CameraState> emitter) {
    _timer = Timer.periodic(const Duration(milliseconds: 100), (t) {
      final camProperty = state.camProperty;
      if (camProperty == null) return;
      if (state.recTime < (camProperty.maxTime * 1000)) {
        emitter(state.copyWith(recTime: state.recTime + 100));
      } else {
        add(const CameraEvent.stop());
      }
    });
  }

  @override
  Future<void> close() {
    _timer?.cancel();
    state.camProperty?.controller.dispose();
    return super.close();
  }
}
