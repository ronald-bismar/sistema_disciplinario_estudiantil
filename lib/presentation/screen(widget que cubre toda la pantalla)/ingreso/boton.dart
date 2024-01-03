import 'package:flutter/material.dart';

class MyButton extends StatefulWidget {
  const MyButton({super.key});
  @override
  // ignore: library_private_types_in_public_api
  _MyButtons createState() => _MyButtons();
}

class _MyButtons extends State<MyButton> {
  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        FilledButton(
          style: ButtonStyle(
              backgroundColor:
                  MaterialStatePropertyAll(Color.fromARGB(255, 37, 54, 76))),
          onPressed: null,
          child: Text(
            "Ingresar",
            style: TextStyle(color: Color.fromARGB(255, 220, 220, 220)),
          ),
        ),
        FilledButton(
            style: ButtonStyle(
                backgroundColor:
                    MaterialStatePropertyAll(Color.fromARGB(255, 37, 54, 76))),
            onPressed: null,
            child: Text(
              "Registro",
              style: TextStyle(color: Color.fromARGB(255, 220, 220, 220)),
            ))
      ],
    );
  }
}
