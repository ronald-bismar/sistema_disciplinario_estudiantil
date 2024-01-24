import 'package:flutter/material.dart';

class CheckBoxListTileApp extends StatefulWidget {
  const CheckBoxListTileApp({Key? key}) : super(key: key);
  @override
  State<CheckBoxListTileApp> createState() => _CheckBoxListTileAppState();
}

class _CheckBoxListTileAppState extends State<CheckBoxListTileApp> {
  bool? _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      title: const Text(
        "Recordar inicio de sesion",
        style: TextStyle(
          fontSize: 17,
          color: Colors.white,
        ),
      ),
      value: _isChecked,
      onChanged: (bool? newValue) {
        setState(() => _isChecked = newValue);
      },
    );
  }
}
