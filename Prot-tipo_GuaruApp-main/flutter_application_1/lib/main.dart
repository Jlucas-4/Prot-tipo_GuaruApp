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

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            color: Colors.grey,
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.network(
                    'assets\images\seta-direita1.png',
                    width: 36,
                    height: 36,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.network(
                    'assets\images\menu-aberto1',
                    width: 33,
                    height: 33,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.white,
              child: ListView(
                children: <Widget>[
                  HoverImage(
                    imageUrl: 'assets\images\Rectangle1',
                    label: 'Corações Guarujá.',
                  ),
                  HoverImage(
                    imageUrl: 'assets\images\Rectangle2',
                    label: 'Mirantes Guarujá',
                  ),
                  HoverImage(
                    imageUrl: 'assets\images\Rectangle3',
                    label: 'Praia Santos Guarujá',
                  ),
                  HoverImage(
                    imageUrl: 'assets\images\Rectangle4',
                    label: 'Sofitel',
                  ),
                  HoverImage(
                    imageUrl: 'assets\images\Rectangle5',
                    label: 'São Vicente',
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class HoverImage extends StatefulWidget {
  final String imageUrl;
  final String label;

  HoverImage({required this.imageUrl, required this.label});

  @override
  _HoverImageState createState() => _HoverImageState();
}

class _HoverImageState extends State<HoverImage> {
  bool _hovering = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: MouseRegion(
        onEnter: (_) => _mouseEnter(true),
        onExit: (_) => _mouseEnter(false),
        child: Stack(
          children: <Widget>[
            Image.network(
              widget.imageUrl,
              width: 304,
              height: 152,
            ),
            if (_hovering)
              Positioned(
                bottom: 0,
                child: Container(
                  width: 304,
                  height: 21,
                  color: Colors.black,
                  child: Center(
                    child: Text(
                      widget.label,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                      ),
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }

  void _mouseEnter(bool hovering) {
    setState(() {
      _hovering = hovering;
    });
  }
}
