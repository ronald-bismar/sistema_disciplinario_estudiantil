import 'package:flutter/material.dart';
import 'package:sistema_disciplinario_estudiantil/presentation/screens/widgets/contenedor_datos_%20estudiante.dart';

// ignore: camel_case_types
class Pantalla_Principal extends StatelessWidget {
  const Pantalla_Principal({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'LoginTutor',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Principal(),
    );
  }
}

class Principal extends StatefulWidget {
  const Principal({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _PrincipalState createState() => _PrincipalState();
}

class _PrincipalState extends State<Principal> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        backgroundColor: Color.fromARGB(255, 15, 40, 83),
        body: SafeArea(
          child: Column(
            children: [Dates_Student()],
          ),
        ));
  }
}
