import 'package:flutter/material.dart';

class MyTextFieldWidget extends StatefulWidget {
  const MyTextFieldWidget({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MyTextFieldWidgetState createState() => _MyTextFieldWidgetState();
}

class _MyTextFieldWidgetState extends State<MyTextFieldWidget> {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Color backgroundColor = const Color(0xFFc5e1f2);
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: backgroundColor,
      ),
      child: TextField(
        controller: _controller,
        style: const TextStyle(fontWeight: FontWeight.w600),
        decoration: const InputDecoration(
          labelText: "Nombre",
          // Quitar los bordes del TextField
          border: InputBorder.none,
          labelStyle: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
          contentPadding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
}
