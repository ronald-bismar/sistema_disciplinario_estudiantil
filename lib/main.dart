import 'package:flutter/material.dart';
import 'package:sistema_disciplinario_estudiantil/presentation/screens/widgets/boton.dart';
import 'package:sistema_disciplinario_estudiantil/presentation/screens/widgets/checkbox_list_tile.dart';
import 'package:sistema_disciplinario_estudiantil/presentation/screens/widgets/logo.dart';
import 'package:sistema_disciplinario_estudiantil/presentation/screens/widgets/text_field.dart';
import 'package:sistema_disciplinario_estudiantil/presentation/screens/registro_datos_estudiantes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.black38),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    Color backgroundColor = const Color(0xFF91c8e8);
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                const Padding(
                  padding:
                      EdgeInsets.only(top: 40, bottom: 0, left: 0, right: 0),
                  child: Logo(),
                ),
                Container(
                    margin: const EdgeInsets.symmetric(
                        vertical:
                            30.0), // Puedes ajustar el valor según tus necesidades
                    child: const Text(
                      'Bienvenido',
                      style: TextStyle(
                          fontFamily: 'Baloo',
                          fontSize: 35,
                          fontWeight: FontWeight.w900,
                          color: Color.fromARGB(255, 37, 54, 76)),
                    )),
              ],
            ),
            const Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 10, left: 40.0, right: 40.0),
                  child: MyTextFieldWidget(
                    label: "Correo electronico",
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top: 10, bottom: 10, left: 40.0, right: 40.0),
                  child: MyTextFieldWidget(label: "Contraseña"),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top: 10, bottom: 10, left: 40.0, right: 40.0),
                  child: MyTextFieldWidget(
                    label: "Numero de Carnet",
                  ),
                ),
              ],
            ),
            const Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      top: 10, bottom: 10, left: 40.0, right: 40.0),
                  child: MyButton(),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 30.0, right: 30.0),
                  child: CheckBoxListTileApp(),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
