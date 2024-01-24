import 'package:flutter/material.dart';
import 'package:sistema_disciplinario_estudiantil/presentation/login_tutor.dart';

class MyButton extends StatefulWidget {
  const MyButton({super.key});
  @override
  // ignore: library_private_types_in_public_api
  _MyButtons createState() => _MyButtons();
}

class _MyButtons extends State<MyButton> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        FilledButton(
          style: ButtonStyle(
              padding: MaterialStateProperty.all(const EdgeInsets.all(12)),
              backgroundColor: const MaterialStatePropertyAll(
                  Color.fromARGB(255, 37, 54, 76)),
              shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)))),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const LoginTutor()));
          },
          child: const Text(
            "REGISTRO",
            style: TextStyle(
                color: Color.fromARGB(255, 220, 220, 220),
                fontFamily: 'Linotte',
                fontWeight: FontWeight.w100),
          ),
        ),
        FilledButton(
            style: ButtonStyle(
                padding: MaterialStateProperty.all(const EdgeInsets.all(12)),
                backgroundColor: const MaterialStatePropertyAll(
                    Color.fromARGB(255, 37, 54, 76)),
                shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)))),
            onPressed: null,
            child: const Text(
              "INGRESAR",
              style: TextStyle(
                  color: Color.fromARGB(255, 220, 220, 220),
                  fontFamily: 'Linotte',
                  fontWeight: FontWeight.w100),
            ))
      ],
    );
  }
}
