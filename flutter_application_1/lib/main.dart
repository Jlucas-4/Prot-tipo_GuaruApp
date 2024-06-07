import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
        title: const Text('GuaruApp'),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 217, 217, 217),
        ),
        body: Center(
        child: Text('GuaruApp'),
        ),
      ),
    );
  }
}
