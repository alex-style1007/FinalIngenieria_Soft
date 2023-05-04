import 'dart:html' show File;

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ViewController extends StatefulWidget {
  @override
  _ViewControllerState createState() => _ViewControllerState();
}

class _ViewControllerState extends State<ViewController> {
  late File _image;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Image Viewer'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: SizedBox(
                height: 200,
                child: _image == null ? Text('No image selected.') : Image.file(_image),
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Pick an image from the gallery
                    ImagePicker.pickImage(source: ImageSource.gallery).then((image) {
                      setState(() {
                        _image = image as File;
                      });
                    });
                  },
                  child: const Text('Select Image'),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Analyze the image
                    if (_image == null) {
                      return;
                    }


                    // Display the analysis results
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: const Text('Analysis Results'),
                          content: const Text("analysis"),
                          actions: [
                            ElevatedButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: const Text('OK'),
                            ),
                          ],
                        );
                      },
                    );
                  },
                  child: const Text('Analyze'),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Push the history view controller onto the navigation stack
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) {
                          return HistoryViewController(image: _image);
                        },
                      ),
                    );
                  },
                  child: const Text('History'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class HistoryViewController extends StatelessWidget {
  final image;

  HistoryViewController({Key key, this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('History'),
      ),
      body: ListView(
        children: [
          Image(image: image),
        ],
      ),
    );
  }
}