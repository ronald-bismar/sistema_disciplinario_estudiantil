import 'package:flutter/material.dart';
import 'package:sistema_disciplinario_estudiantil/presentation/screen(widget%20que%20cubre%20toda%20la%20pantalla)/ingreso/boton.dart';
import 'package:sistema_disciplinario_estudiantil/presentation/screen(widget%20que%20cubre%20toda%20la%20pantalla)/ingreso/text_field_widget.dart';

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
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/escuela.png',
              width: 100,
              height: 100,
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
                      fontWeight: FontWeight.w900),
                )),
            const Padding(
              padding:
                  EdgeInsets.only(top: 30, bottom: 20, left: 40.0, right: 40.0),
              child: MyTextFieldWidget(),
            ),
            const Padding(
              padding:
                  EdgeInsets.only(top: 20, bottom: 20, left: 40.0, right: 40.0),
              child: MyTextFieldWidget(),
            ),
            const Padding(
              padding:
                  EdgeInsets.only(top: 20, bottom: 20, left: 40.0, right: 40.0),
              child: MyTextFieldWidget(),
            ),
            const SizedBox(height: 30),
            const Padding(
              padding:
                  EdgeInsets.only(top: 20, bottom: 20, left: 40.0, right: 40.0),
              child: MyButton(),
            ),
          ],
        ),
      ),
    );
  }
}
