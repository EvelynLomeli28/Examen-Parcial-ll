import 'package:examen_parciall/widget/Pagina1.dart';
//import 'package:examen_parciall/widget/Pagina2.dart';
//import 'package:examen_parciall/widget/Pagina3.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Pagina1(),
    );
  }
}

