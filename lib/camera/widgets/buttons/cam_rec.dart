import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/camera_bloc.dart';

class CamRec extends StatelessWidget {
  const CamRec({required this.onPress, super.key});

  final void Function() onPress;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CameraBloc, CameraState>(
      buildWhen: (prev, curr) => prev.camState != curr.camState,
      builder: (context, state) => state.camState != CamState.ready
          ? const SizedBox()
          : Positioned(
              bottom: 30,
              left: MediaQuery.of(context).size.width * 0.5 - 25,
              child: MaterialButton(
                minWidth: 0,
                shape: const CircleBorder(),
                padding: const EdgeInsets.all(7.5),
                onPressed: onPress,
                child: const Icon(Icons.fiber_manual_record,
                    color: Colors.white, size: 32),
              ),
            ),
    );
  }
}
