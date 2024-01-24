// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:sistema_disciplinario_estudiantil/presentation/screens/pantalla-principal.dart';
import 'package:sistema_disciplinario_estudiantil/presentation/screens/widgets/boton_ancho.dart';
import 'package:sistema_disciplinario_estudiantil/presentation/screens/widgets/contenedor_datos_%20estudiante.dart';
import 'package:sistema_disciplinario_estudiantil/presentation/screens/widgets/logo.dart';
import 'package:sistema_disciplinario_estudiantil/presentation/screens/widgets/text_field.dart';

class LoginStudent extends StatelessWidget {
  const LoginStudent({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'LoginTutor',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const LoginEstudiante(),
    );
  }
}

class LoginEstudiante extends StatefulWidget {
  const LoginEstudiante({Key? key}) : super(key: key);

  @override
  _LoginEstudianteState createState() => _LoginEstudianteState();
}

class _LoginEstudianteState extends State<LoginEstudiante> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        body: SafeArea(
          child: Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Logo(),
              const Padding(
                padding: EdgeInsets.only(left: 40, right: 40),
                child: Text(
                  "Sistema Academico Disciplinario Estudiantil",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: 'Baloo',
                      fontSize: 25,
                      fontWeight: FontWeight.w700),
                ),
              ),
              const Text(
                "INGRESE LOS DATOS DEL ESTUDIANTE",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Linotte',
                  fontSize: 20,
                ),
              ),
              const Padding(
                  padding: EdgeInsets.only(left: 40, right: 40),
                  child: MyTextFieldWidget(label: "Numero de RUDE")),
              const Padding(
                  padding: EdgeInsets.only(left: 40, right: 40),
                  child: MyTextFieldWidget(label: "Nombres y Apellidos")),
              const Padding(
                  padding: EdgeInsets.only(left: 40, right: 40),
                  child: MyTextFieldWidget(label: "Cedula de identidad")),
              Padding(
                padding: const EdgeInsets.only(left: 40, right: 40),
                child: BotonAncho(
                  text: "SIGUIENTE",
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Dates_Student()),
                    );
                  },
                ),
              ),
            ],
          )),
        ));
  }
}
