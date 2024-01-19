import 'package:flutter/material.dart';

class LoginTutor extends StatelessWidget {
  const LoginTutor({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'LoginTutor',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Login(),
    );
  }
}

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: const Text('Login'),
      ),
    );
  }
}
