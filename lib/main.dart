import 'dart:io';

import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:saf/saf.dart';

import 'camera/record_screen.dart';
import 'widgets/add_video_dialog.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Test cam to USB recording'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(title),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Click to test record',
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _tryRecord(context),
        tooltip: 'RECORD',
        child: const Icon(Icons.camera_rounded),
      ),
    );
  }

  void _tryRecord(BuildContext context) {
    AddVideoDialog.show(context);
    // Navigator.push<XFile?>(
    //   context,
    //   MaterialPageRoute(builder: (_) => const RecordScreen()),
    // );
  }
}


/// <<< от CHAT-GPT >>>
// import 'dart:io';
// import 'package:flutter/material.dart';
// import 'package:path_provider/path_provider.dart';
// import 'package:usb_serial/usb_serial.dart';
//
// void main() => runApp(MyApp());
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: VideoSaveScreen(),
//     );
//   }
// }
//
// class VideoSaveScreen extends StatefulWidget {
//   @override
//   _VideoSaveScreenState createState() => _VideoSaveScreenState();
// }
//
// class _VideoSaveScreenState extends State<VideoSaveScreen> {
//   UsbDevice _device;
//   UsbPort _port;
//
//   @override
//   void initState() {
//     super.initState();
//     _initializeUsbDevice();
//   }
//
//   Future<void> _initializeUsbDevice() async {
//     List<UsbDevice> devices = await UsbSerial.listDevices();
//     if (devices.isNotEmpty) {
//       _device = devices[0];
//       _port = await _device.create();
//     }
//   }
//
//   Future<void> _saveVideoToUsb() async {
//     if (_port == null) {
//       print('USB device not connected');
//       return;
//     }
//
//     // Получаем временный каталог приложения
//     Directory tempDir = await getTemporaryDirectory();
//     String tempPath = tempDir.path;
//     String videoFilePath = '$tempPath/sample_video.mp4';
//
//     // Записываем тестовый видеофайл во временный каталог
//     File videoFile = File(videoFilePath);
//     await videoFile.writeAsBytes([/* данные вашего видео */]);
//
//     // Копируем файл на USB-флешку
//     String usbPath = '/storage/usb_storage/sample_video.mp4';
//     File usbFile = File(usbPath);
//     await usbFile.writeAsBytes(await videoFile.readAsBytes());
//
//     print('Video saved to USB: $usbPath');
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Save Video to USB'),
//       ),
//       body: Center(
//         child: ElevatedButton(
//           onPressed: _saveVideoToUsb,
//           child: Text('Save Video'),
//         ),
//       ),
//     );
//   }
// }