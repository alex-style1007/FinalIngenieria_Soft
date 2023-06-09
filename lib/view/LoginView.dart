import 'package:flutter/material.dart';
import 'package:flutter_application_1/view/load_page.dart';
import 'package:flutter_application_1/view/test.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: TextField(
                  controller: _usernameController,
                  decoration: const InputDecoration(
                    labelText: 'Username',
                  ),
                ),
              ),
            ),
             SizedBox(
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: TextField(
                  obscureText: true,
                  controller: _passwordController,
                  decoration: const InputDecoration(
                    labelText: 'Password',
                  ),
                ),
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      if (_usernameController.text.isNotEmpty && _passwordController.text.isNotEmpty) {
                        Navigator.push(context, MaterialPageRoute(builder: (_){return Picker();}));
                      }
                    },
                    child: const Text('Login'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}