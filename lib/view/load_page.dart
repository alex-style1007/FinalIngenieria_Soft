import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class LoadPage extends StatefulWidget {
  @override
  _LoadPageState createState() => _LoadPageState();
}

class _LoadPageState extends State<LoadPage> {
  late File _imageFile;
  final picker = ImagePicker();

  Future<void> _getImage() async {
    final pickedFile = await picker.getImage(source: ImageSource.gallery);

    setState(() {
      if (pickedFile != null) {
        _imageFile = File(pickedFile.path);
      } else {
        print('No se ha seleccionado ninguna imagen.');
      }
    });
  }

  Widget _buildImage() {
    if (_imageFile != null) {
      return Image.file(_imageFile);
    } else {
      return Text('No hay imagen cargada');
    }
  }

  void _navigateToPredictedAnimal() {
    // implementar la navegación a la vista predicted animal
  }

  Widget _buildButtons(BuildContext context) {
    return Column(
      children: <Widget>[
        ElevatedButton(
          child: Text('Cargar imagen'),
          onPressed: () => _getImage(),
        ),
        ElevatedButton(
          child: Text('Identificar animal'),
          onPressed: () => _navigateToPredictedAnimal(),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Identificación de animales'),
      ),
      body: Column(
        children: <Widget>[
          _buildImage(),
          _buildButtons(context),
        ],
      ),
    );
  }
}
