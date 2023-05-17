import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class LoadPage extends StatefulWidget {
  const LoadPage({super.key});
  @override
  State<LoadPage> createState() => _LoadPageState();
}

class _LoadPageState extends State<LoadPage> {
  File? _imageFile;
  bool isLoaded = false;
  final picker = ImagePicker();

  Future<void> _getImage() async {
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);

    setState(() {
      if (pickedFile != null) {
        isLoaded = true;
        _imageFile = File(pickedFile.path);
      } else {
        print('No se ha seleccionado ninguna imagen.');
      }
    });
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
          Visibility(
            visible: isLoaded,
            replacement: Text('No hay imagen cargada'),
            child: Image.file(_imageFile!)

          ),
          _buildButtons(context),
        ],
      ),
    );
  }
}
