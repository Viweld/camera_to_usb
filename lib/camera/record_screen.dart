import 'package:flip_card/flip_card.dart';
import 'package:flip_card/flip_card_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/camera_bloc.dart';
import 'widgets/camera_core.dart';

class RecordScreen extends StatefulWidget {
  const RecordScreen({super.key});

  @override
  State<RecordScreen> createState() => _RecordScreenState();
}

class _RecordScreenState extends State<RecordScreen> {
  final _flipController = FlipCardController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: BlocProvider<CameraBloc>(
        create: (context) => CameraBloc(),
        child: FlipCard(
          flipOnTouch: false,
          speed: 800,
          controller: _flipController,
          front: CameraCore(onToggle: _toBackCamera),
          back: CameraCore(onToggle: _toFrontCamera),
        ),
      ),
    );
  }

  void _toFrontCamera() => _flipController.state?.controller?.forward();

  void _toBackCamera() => () => _flipController.state?.controller?.reverse();
}
