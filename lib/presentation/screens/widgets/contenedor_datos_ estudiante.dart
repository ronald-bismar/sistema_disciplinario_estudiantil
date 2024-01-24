import 'package:flutter/material.dart';

class Dates_Student extends StatelessWidget {
  const Dates_Student({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'LoginTutor',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const DataStudent(),
    );
  }
}

class DataStudent extends StatefulWidget {
  const DataStudent({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _DataStudent_State createState() => _DataStudent_State();
}

// ignore: camel_case_types
class _DataStudent_State extends State<DataStudent> {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: const Color.fromARGB(255, 48, 104, 176),
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular((20)))));
  }
}
