import 'package:flutter/material.dart';
import 'package:projek_1/menu_main.dart';

import 'Curriculum Vitae.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Project',
      home:CV(),
    );
  }
}

