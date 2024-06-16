import 'package:flutter/material.dart';

import 'package:flutter_application_2/main.dart';

void main() {
  runApp(const MaterialApp(title: "App",
  home: MainApp(),));
}

class SegPag extends StatelessWidget {
  const SegPag({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(

        appBar: AppBar(
          leading: Container(
            height: 40,
            width: 30,
            child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back),
            ),
          ),
          backgroundColor: const Color.fromARGB(255, 217, 217, 217),
         actions: [IconButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('New icon pressed')),
              );
            },
            icon: const Icon(Icons.menu),
          ),],
          
        ),
       body: const Center(
        child: Column(
          children: [ Text("Imagens a serem adicionadas"),
         ],
        ),
      ),
      
    );
  }
}