import 'dart:html' show File;

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:image_picker_web/image_picker_web.dart';

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
        title: const Text('Vista de imagen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: SizedBox(
                height: 200,
                child: _image == null ? Text('No hay imagen seleccionada') : Image.file(_image),
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
              ],
            ),
          ],
        ),
      ),
    );
  }
}