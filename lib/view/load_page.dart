import 'dart:io';
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_drive/google_drive.dart';

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
                  // Get the Google Drive client.
                  final drive = GoogleDrive(
                    clientId: 'YOUR_CLIENT_ID',
                    clientSecret: 'YOUR_CLIENT_SECRET',
                  );

                  // Get the image file from Google Drive.
                  final imageFile = await drive.files.get(
                    fileId: 'YOUR_FILE_ID',
                  );

                  // If the file was found, display it.
                  if (imageFile != null) {
                    final image = Image.file(imageFile.path);
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