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
// class MyApp extends StatefulWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   @override
//   State<MyApp> createState() => _MyAppState();
// }
// const directory = "Android/media/matrix/.neo";
// class _MyAppState extends State<MyApp> {
//   late Saf saf;
//   var _paths = [];
//   @override
//   void initState() {
//     Permission.storage.request();
//     saf = Saf(directory);
//     super.initState();
//   }
//
//   loadImage(paths, {String k = ""}) {
//     var tempPaths = [];
//     for (String path in paths) {
//       if (path.endsWith(".jpg")) {
//         tempPaths.add(path);
//       }
//     }
//     if (k.isNotEmpty) tempPaths.add(k);
//     _paths = tempPaths;
//     setState(() {});
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('Saf example app'),
//         ),
//         body: Center(
//           child: SingleChildScrollView(
//             child: Column(
//               children: [
//                 if (_paths.isNotEmpty)
//                   ..._paths.map(
//                         (path) => Card(
//                       child: Image.file(
//                         File(path),
//                       ),
//                     ),
//                   )
//               ],
//             ),
//           ),
//         ),
//         bottomNavigationBar: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceAround,
//           children: [
//             ElevatedButton(
//               style: ButtonStyle(
//                 backgroundColor:
//                 MaterialStateProperty.all(Colors.deepPurpleAccent),
//               ),
//               onPressed: () async {
//                 final pp = await getExternalStorageDirectories();
//                 pp?.forEach((d) => print(d.parent.path));
//                 // final r = await saf.getFilesPath();
//                 // r?.forEach(print);
//                 // final t = await saf.cache();
//                 // t?.forEach(print);
//                 // final e = await saf.getCachedFilesPath();
//                 // e?.forEach(print);
//                 //Saf.releasePersistedPermissions();
//               },
//               child: const Text("Release*"),
//             ),
//             ElevatedButton(
//               style: ButtonStyle(
//                 backgroundColor:
//                 MaterialStateProperty.all(Colors.blueGrey.shade700),
//               ),
//               onPressed: () async {
//                 var cachedFilesPath = await saf.cache();
//                 if (cachedFilesPath != null) {
//                   loadImage(cachedFilesPath);
//                 }
//               },
//               child: const Text("Cache"),
//             ),
//             ElevatedButton(
//               style: ButtonStyle(
//                 backgroundColor: MaterialStateProperty.all(Colors.green),
//               ),
//               onPressed: () async {
//                 var isSync = await saf.sync();
//                 if (isSync as bool) {
//                   var _paths = await saf.getCachedFilesPath();
//                   loadImage(_paths);
//                 }
//               },
//               child: const Text("Sync"),
//             ),
//             ElevatedButton(
//               style: ButtonStyle(
//                 backgroundColor: MaterialStateProperty.all(Colors.orange),
//               ),
//               onPressed: () async {
//                 var isClear = await saf.clearCache();
//                 if (isClear != null && isClear) {
//                   loadImage([]);
//                 }
//               },
//               child: const Text("Clear"),
//             ),
//           ],
//         ),
//         floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
//         floatingActionButton: FloatingActionButton(
//           elevation: 30.0,
//           backgroundColor: Colors.black,
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: const [
//               Text(
//                 "GRANT",
//                 style: TextStyle(fontSize: 13, color: Colors.red),
//               ),
//               Text(
//                 "Permission",
//                 style: TextStyle(fontSize: 7.8, color: Colors.red),
//               )
//             ],
//           ),
//           onPressed: () async {
//             await saf.getDirectoryPermission(isDynamic: true);
//
//           },
//         ),
//       ),
//     );
//   }
// }

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
