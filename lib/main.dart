import 'package:flutter/material.dart';
import 'package:my_demo_app/layout/home_pgae.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stack UI Clone',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: const Color.fromARGB(255, 220, 219, 217),
      ),
      home: const HomePage(),
    );
  }
}
