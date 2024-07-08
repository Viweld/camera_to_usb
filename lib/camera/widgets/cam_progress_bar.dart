import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/camera_bloc.dart';
import 'app_line_progress_bar.dart';

class CamProgressBar extends StatelessWidget {
  const CamProgressBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CameraBloc, CameraState>(
      builder: (context, state) {
        if (state.camState != CamState.rec &&
            state.camState != CamState.pause) {
          return const SizedBox();
        } else {
          return Positioned(
            top: 40,
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: AppLineProgressBar(
                  state.recTime / (state.camProperty!.maxTime * 1000),
                ),
              ),
            ),
          );
        }
      },
    );
  }
}
