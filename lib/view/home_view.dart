import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/custom_colors.dart';
import 'package:flutter_application_1/widgets/custom_button.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: CustomColors.primaryColor,
        title: const Text('HomeView'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(flex: 3),
            CustomButton(
              text: 'Historial',
              onPressed: () {
                
              },
              color: CustomColors.primaryColor,
            ),
            const SizedBox(height: 10),
            CustomButton(
              text: 'Nueva consulta',
              onPressed: () {},
              color: Colors.green,
            ),
            const Spacer(flex: 3),
            CustomButton(
              text: 'Cerrar sesion',
              onPressed: () {},
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
