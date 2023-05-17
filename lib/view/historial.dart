import 'package:flutter/material.dart';
class HistoryView extends StatelessWidget {
  const HistoryView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Historial de imágenes'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            // Contenido de la vista del historial de imágenes
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ElevatedButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const Text('Regresar'),
        ),
      ),
    );
  }
}


// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'My App',
//       home: Scaffold(
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               ListView(
//                 children: [
//                   ListTile(
//                     leading: Image.asset('assets/images/image1.jpg'),
//                     title: const Text('This is the title of the image'),
//                     subtitle: const Text('This is the subtitle of the image'),
//                   ),
//                   ListTile(
//                     leading: Image.asset('assets/images/image2.jpg'),
//                     title: const Text('This is the title of the image'),
//                     subtitle: const Text('This is the subtitle of the image'),
//                   ),
//                   ListTile(
//                     leading: Image.asset('assets/images/image3.jpg'),
//                     title: const Text('This is the title of the image'),
//                     subtitle: const Text('This is the subtitle of the image'),
//                   ),
//                 ],
//               ),
//               ElevatedButton(
//                 onPressed: () {
//                   // Go back to the previous page.
//                   Navigator.pop(context);
//                 },
//                 child: const Text('Back'),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

