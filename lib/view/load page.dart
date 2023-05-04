import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';

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
                onPressed: () {
                  // Load the image from the device.
                  final image = FilePicker.getImage(source: ImageSource.gallery);

                  // Display the image in a container that is not very large.
                  final container = SizedBox(
                    width: 200,
                    height: 200,
                    child: image,
                  );

                  // Add a button at the bottom called classify.
                  final button = ElevatedButton(
                    onPressed: () {
                      // Classify the image.
                      // ...
                    },
                    child: Text('Classify'),
                  );

                  // Return the container and the button.
                  return Column(
                    children: [
                      container,
                      SizedBox(
                        height: 20,
                      ),
                      button,
                    ],
                  );
                },
                child: Text('Load Image'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}