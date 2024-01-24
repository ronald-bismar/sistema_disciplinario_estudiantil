import 'package:flutter/material.dart';
import 'package:sistema_disciplinario_estudiantil/presentation/screens/registro_datos_estudiantes.dart';

class BotonAncho extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  const BotonAncho({Key? key, required this.text, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity, // Ancho que ocupa toda la pantalla
      child: FilledButton(
        style: ButtonStyle(
          padding: MaterialStateProperty.all(const EdgeInsets.all(12)),
          backgroundColor: MaterialStateProperty.all(
              const Color.fromARGB(255, 48, 104, 176)),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
          ),
        ),
        onPressed: onPressed,
        child: const Text(
          "SIGUIENTE",
          style: TextStyle(
            color: Color.fromARGB(255, 238, 238, 238),
            fontFamily: 'Linotte',
            fontWeight: FontWeight.w600,
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}
