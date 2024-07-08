import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/camera_bloc.dart';

class CamTime extends StatelessWidget {
  const CamTime({
    required this.onPress,
    required this.limit,
    this.height = 34,
    this.width = 34,
    super.key,
  });

  final void Function(int) onPress;
  final int limit;
  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CameraBloc, CameraState>(
      buildWhen: (prev, curr) =>
          prev.camProperty?.maxTime != curr.camProperty?.maxTime,
      builder: (context, state) => GestureDetector(
        onTap: () => onPress.call(limit),
        child: Container(
          height: height,
          width: width,
          decoration: state.camProperty?.maxTime == limit
              ? BoxDecoration(
                  border: Border.all(color: Colors.white),
                  borderRadius: const BorderRadius.all(Radius.circular(6)),
                )
              : BoxDecoration(
                  border: Border.all(color: Colors.white54),
                  borderRadius: const BorderRadius.all(Radius.circular(6)),
                ),
          child: Container(
            decoration: state.camProperty?.maxTime == limit
                ? const BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                  )
                : const BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                  ),
            child: Center(
              child: Text(
                '$limit с',
                style: TextStyle(
                  height: 1.2,
                  fontWeight: FontWeight.w600,
                  fontSize: 11,
                  color: state.camProperty?.maxTime == limit
                      ? Colors.white
                      : Colors.white54,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
