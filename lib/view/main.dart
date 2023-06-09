import 'package:flutter/material.dart';
import 'view/LoginView.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: 'Identificación de animales',
      home: LoginView(),// para establecer a login view como página de inicio
    );
  }
}
