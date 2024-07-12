import 'dart:io';

import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

import '../camera/record_screen.dart';

class AddVideoDialog extends StatefulWidget {
  const AddVideoDialog._();

  @override
  State<AddVideoDialog> createState() => _AddVideoDialogState();

  static Future<File?> show(BuildContext context) => showDialog<File?>(
        context: context,
        builder: (_) => const AddVideoDialog._(),
      );
}

class _AddVideoDialogState extends State<AddVideoDialog> {
  final _pauseNotifier = ValueNotifier<bool>(true);
  File? _video;
  VideoPlayerController? _videoController;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      contentPadding: EdgeInsets.zero,
      actionsPadding: EdgeInsets.zero,
      backgroundColor: Colors.transparent,
      content: FutureBuilder<VideoPlayerController?>(
        future: initController(),
        builder: (context, snapshot) {
          final videoController = snapshot.data;
          return videoController == null ||
                  snapshot.connectionState != ConnectionState.done
              ? const SizedBox()
              : SingleChildScrollView(
                  child: Dismissible(
                    direction: DismissDirection.up,
                    key: const ValueKey('key'),
                    background: Container(
                      color: Colors.red,
                      child: const Padding(
                        padding: EdgeInsets.all(15),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Icon(
                              Icons.delete_outline,
                              color: Colors.white,
                              size: 20,
                            ),
                            Text('У Д А Л И Т Ь'),
                          ],
                        ),
                      ),
                    ),
                    onDismissed: (_) async {
                      await detachController();
                      if (mounted) {
                        setState(() => _video = null);
                      }
                    },
                    child: GestureDetector(
                      onTap: () {
                        _pauseNotifier.value
                            ? _videoController?.play()
                            : _videoController?.pause();
                        _pauseNotifier.value = !_pauseNotifier.value;
                      },
                      child: AspectRatio(
                        aspectRatio: _videoController?.value.aspectRatio ?? 1,
                        child: LayoutBuilder(
                          builder: (context, c) {
                            return Stack(
                              alignment: Alignment.center,
                              children: [
                                VideoPlayer(videoController),
                                ValueListenableBuilder(
                                  valueListenable: _pauseNotifier,
                                  builder: (context, isPause, _) => !isPause
                                      ? const SizedBox()
                                      : const Icon(
                                          Icons.play_circle,
                                          color: Colors.white70,
                                          size: 70,
                                        ),
                                ),
                              ],
                            );
                          },
                        ),
                      ),
                    ),
                  ),
                );
        },
      ),
      actions: [
        TextButton(
          child: const Text(
            'С Н Я Т Ь',
            style: TextStyle(color: Colors.orange),
          ),
          onPressed: () async {
            await pauseIfPlayed();
            if (!context.mounted) return;
            final xFile = await Navigator.push<XFile?>(
              context,
              MaterialPageRoute(
                builder: (context) => const RecordScreen(),
              ),
            );
            if (context.mounted && xFile != null) {
              await setVideoAfterCheck(xFile);
            }
          },
        ),
      ],
    );
  }

  @override
  Future<void> dispose() async {
    super.dispose();
    await detachController();
  }

  Future<void> detachController() async {
    await pauseIfPlayed();
    await _videoController?.dispose();
    _videoController = null;
  }

  Future<VideoPlayerController?> initController() async {
    final video = _video;
    if (video != null) {
      _videoController = VideoPlayerController.file(video);
    }
    await _videoController?.initialize();
    await _videoController?.setLooping(true);
    return _videoController;
  }

  Future<void> pauseIfPlayed() async {
    if (_videoController?.value.isPlaying ?? false) {
      await _videoController?.pause();
      _pauseNotifier.value = !_pauseNotifier.value;
    }
  }

  Future<void> setVideoAfterCheck(XFile file) async {
    final formatFile = file.name.split('.').last.toLowerCase();
    if (formatFile != 'avi' && formatFile != 'wmv') {
      await detachController();
      setState(() => _video = File(file.path));
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          duration: const Duration(seconds: 2),
          content: Text(
            'Н Е П Р А В И Л Ь Н Ы Й   Ф О Р М А Т  В И Д Е О - $formatFile',
          ),
        ),
      );
    }
  }
}
