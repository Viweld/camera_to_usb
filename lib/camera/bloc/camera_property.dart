import 'package:camera/camera.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

//ignore_for_file: prefer-match-file-name
//ignore_for_file: avoid-unused-parameters

part 'camera_property.freezed.dart';

@freezed
class CameraProperty with _$CameraProperty {
  const factory CameraProperty({
    required List<CameraDescription> cameras,
    required CameraController controller,
    required double minZoom,
    required double maxZoom,
    required int camCount,
    required int camIndex,
    @Default(60) int maxTime,
  }) = _CameraProperty;
}
