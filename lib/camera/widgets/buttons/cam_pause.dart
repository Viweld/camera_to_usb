import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/camera_bloc.dart';

class CamPause extends StatelessWidget {
  const CamPause({required this.onPress, super.key});

  final void Function() onPress;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CameraBloc, CameraState>(
      buildWhen: (prev, curr) => prev.camState != curr.camState,
      builder: (context, state) =>
          state.camState != CamState.rec && state.camState != CamState.pause
              ? const SizedBox()
              : Positioned(
                  bottom: 30,
                  left: MediaQuery.of(context).size.width * 3 / 4 - 40,
                  child: MaterialButton(
                    minWidth: 0,
                    shape: const CircleBorder(),
                    padding: const EdgeInsets.all(5),
                    onPressed: onPress,
                    child: const Icon(Icons.pause_rounded, color: Colors.white, size: 32),
                  ),
                ),
    );
  }
}
