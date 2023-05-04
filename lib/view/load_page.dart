import 'package:flutter/material.dart';

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
                  // Open the image picker.
                  final imagePicker = ImagePicker();
                  final pickedFile = await imagePicker.pickImage(source: ImageSource.gallery);

                  // If the user picked an image, display it.
                  if (pickedFile != null) {
                    final image = Image.file(pickedFile);
                    final container = SizedBox(
                      width: 200,
                      height: 200,
                      child: image,
                    );

                    // Add a button at the bottom called sort.
                    final button = ElevatedButton(
                      onPressed: () {
                        // Sort the images.
                        // ...
                      },
                      child: Text('Sort'),
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
                  }
                },
                child: Text('Upload Image'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ImageSource {
}