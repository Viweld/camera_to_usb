import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/camera_bloc.dart';
import 'buttons/cam_pause.dart';
import 'buttons/cam_rec.dart';
import 'buttons/cam_revert.dart';
import 'buttons/cam_stop.dart';
import 'cam_progress_bar.dart';

class CameraCore extends StatelessWidget {
  const CameraCore({
    required this.onToggle,
    super.key,
  });

  final void Function() onToggle;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CameraBloc, CameraState>(
      buildWhen: (prev, curr) => prev.camState != curr.camState,
      builder: (context, state) => state.camState == CamState.loading
          ? Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              color: Colors.deepPurple,
              child: const Center(
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Icon(
                      Icons.camera_alt_outlined,
                      size: 50,
                      color: Colors.black38,
                    ),
                    SizedBox(
                      width: 70,
                      height: 70,
                      child: CircularProgressIndicator(
                        strokeWidth: 2,
                        color: Colors.black38,
                      ),
                    ),
                  ],
                ),
              ),
            )
          : Stack(
              children: [
                BlocBuilder<CameraBloc, CameraState>(
                  builder: (context, state) {
                    final camProperty = state.camProperty;
                    return camProperty == null
                        ? const SizedBox()
                        : SizedBox(
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height,
                            child: FittedBox(
                              fit: BoxFit.fitHeight,
                              child: SizedBox(
                                width: MediaQuery.of(context).size.width,
                                height: MediaQuery.of(context).size.width *
                                    camProperty.controller.value.aspectRatio,
                                child: CameraPreview(
                                  camProperty.controller,
                                ),
                              ),
                            ),
                          );
                  },
                ),
                if (context.read<CameraBloc>().state.question != null)
                  Positioned(
                    top: 0,
                    child: Container(
                      padding: const EdgeInsets.fromLTRB(20,60, 20, 20),
                      width: MediaQuery.of(context).size.width,
                      color: Colors.black54,
                      child: Text(
                        context.read<CameraBloc>().state.question ?? '',
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                CamRevert(
                  onPress: (i) async {
                    onToggle.call();
                    context
                        .read<CameraBloc>()
                        .add(CameraEvent.shiftCam(camIndex: i));
                  },
                ),
                CamRec(
                  onPress: () =>
                      context.read<CameraBloc>().add(const CameraEvent.rec()),
                ),
                CamPause(
                  onPress: () =>
                      context.read<CameraBloc>().add(const CameraEvent.pause()),
                ),
                CamStop(
                  onPress: () =>
                      context.read<CameraBloc>().add(const CameraEvent.stop()),
                ),
                BlocBuilder<CameraBloc, CameraState>(
                  builder: (context, state) => state.recorded == null
                      ? const SizedBox()
                      : Positioned(
                          bottom: 30,
                          right: 30,
                          child: IconButton(
                            onPressed: () {
                              Navigator.pop(
                                context,
                                state.recorded,
                              );
                            },
                            icon: const Icon(
                              Icons.save_alt_outlined,
                              size: 32,
                              color: Colors.white,
                            ),
                          ),
                        ),
                ),
              ],
            ),
    );
  }
}
