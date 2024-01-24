import 'package:flutter/material.dart';

class MyTextFieldWidget extends StatefulWidget {
  final String label;
  const MyTextFieldWidget({Key? key, required this.label}) : super(key: key);

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
        borderRadius: BorderRadius.circular(10),
        color: backgroundColor,
      ),
      child: TextField(
        controller: _controller,
        style: const TextStyle(
            fontFamily: 'Linotte', fontWeight: FontWeight.normal),
        decoration: InputDecoration(
          labelText: widget.label,
          // Quitar los bordes del TextField
          border: InputBorder.none,
          labelStyle: const TextStyle(
              color: Color.fromARGB(210, 0, 0, 0),
              fontFamily: 'Linotte',
              fontSize: 20,
              fontWeight: FontWeight.w100),
          contentPadding: const EdgeInsets.symmetric(horizontal: 20),
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
