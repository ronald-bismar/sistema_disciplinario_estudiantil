import 'package:flutter/material.dart';
import 'package:sistema_disciplinario_estudiantil/presentation/screens/registro_datos_estudiantes.dart';
import 'package:sistema_disciplinario_estudiantil/presentation/screens/widgets/boton_ancho.dart';
import 'package:sistema_disciplinario_estudiantil/presentation/screens/widgets/logo.dart';
import 'package:sistema_disciplinario_estudiantil/presentation/screens/widgets/text_field.dart';

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
        backgroundColor: const Color.fromARGB(255, 15, 40, 83),
        body: SafeArea(
            child: Center(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            const Padding(
              padding: EdgeInsets.only(top: 20, bottom: 20),
              child: Text(
                'BIENVENIDO',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Linotte',
                  fontSize: 25,
                  color: Colors.white,
                ),
              ),
            ),
            Expanded(
                child: Container(
                    height: 200,
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadiusDirectional.only(
                            topStart: Radius.circular(40),
                            topEnd: Radius.circular(40))),
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
                          "INGRESE LOS DATOS DEL TUTOR",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: 'Linotte',
                            fontSize: 20,
                          ),
                        ),
                        const Padding(
                            padding: EdgeInsets.only(left: 40, right: 40),
                            child: MyTextFieldWidget(label: "Nombre")),
                        const Padding(
                            padding: EdgeInsets.only(left: 40, right: 40),
                            child: MyTextFieldWidget(
                                label: "Cedula de Identidad")),
                        const Padding(
                            padding: EdgeInsets.only(left: 40, right: 40),
                            child: MyTextFieldWidget(label: "Teléfono")),
                        Padding(
                            padding: const EdgeInsets.only(left: 40, right: 40),
                            child: BotonAncho(
                              text: "Texto",
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const LoginEstudiante()),
                                );
                              },
                            )),
                      ],
                    )))
          ]),
        )));
  }
}
