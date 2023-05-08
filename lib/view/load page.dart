// import 'package:file_picker/file_picker.dart';
// import 'package:flutter/material.dart';

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({Key? key}) : super(key: key);

//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   String? _filePath;

//   Future<void> _openFileExplorer() async {
//     final result = await FilePicker.platform.pickFiles();
//     if (result == null) {
//       return;
//     }
//     setState(() {
//       _filePath = result.files.single.path;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('File Picker Example'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             ElevatedButton(
//               onPressed: _openFileExplorer,
//               child: const Text('Select Image'),
//             ),
//             if (_filePath != null) Text('File path: $_filePath'),
//           ],
//         ),
//       ),
//     );
//   }
// }







//Pruebas archivo inicial

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () async {
                  // Load the image from the device.
                  final picker = ImagePicker();
                  final pickedFile = await picker.getImage(source: ImageSource.gallery);

                  // Display the image in a container that is not very large.
                  final container = SizedBox(
                    width: 200,
                    height: 200,
                    child: pickedFile != null ? Image.file(File(pickedFile.path)) : const SizedBox.shrink(),
                  );

                  // Add a button at the bottom called classify.
                  final button = ElevatedButton(
                    onPressed: () {
                      // Classify the image.
                      // ...
                    },
                    child: const Text('Classify'),
                  );

                  // Return the container and the button.
                  // return Column(
                  //   children: [
                  //     container,
                  //     const SizedBox(
                  //       height: 20,
                  //     ),
                  //     button,
                  //   ],
                  // );
                },
                child: const Text('Load Image'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}