import 'package:flutter/material.dart';
import 'package:latihan_kuis/login.dart';

void main() {
  runApp(const myApp());
}

class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Latihan Kuis",
      theme: ThemeData(primarySwatch: Colors.pink),
      home: LoginPage(),
    );
  }
}
