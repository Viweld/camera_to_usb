import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/camera_bloc.dart';

class CamRevert extends StatelessWidget {
  const CamRevert({required this.onPress, super.key});

  final void Function(int) onPress;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CameraBloc, CameraState>(
      buildWhen: (prev, curr) => prev.camState != curr.camState,
      builder: (context, state) => state.camState != CamState.ready
          ? const SizedBox()
          : Positioned(
              bottom: 30,
              left: 30,
              child: MaterialButton(
                minWidth: 0,
                shape: const CircleBorder(),
                padding: const EdgeInsets.all(10),
                onPressed: () => state.camProperty?.camIndex == 0
                    ? onPress.call(1)
                    : onPress.call(0),
                child:
                    const Icon(Icons.swap_horiz, color: Colors.white, size: 32),
              ),
            ),
    );
  }
}
