import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    title: "App",
    home: SegPag(),
  ));
}

class SegPag extends StatelessWidget {
  const SegPag({super.key});

  @override
  Widget build(BuildContext context) {
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
        actions: [
          IconButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('New icon pressed')),
              );
            },
            icon: const Icon(Icons.menu),
          ),
        ],
      ),
      body: Container(
        color: Colors.white,
        child: ListView(
          children: const [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: HoverImage(
                imageUrl: 'assets/images/Rectangle1.png',
                label: 'Corações Guarujá.',
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: HoverImage(
                imageUrl: 'assets/images/Rectangle2.png',
                label: 'Mirantes Guarujá',
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: HoverImage(
                imageUrl: 'assets/images/Rectangle3.png',
                label: 'Praia Santos Guarujá',
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: HoverImage(
                imageUrl: 'assets/images/Rectangle4.png',
                label: 'Sofitel',
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: HoverImage(
                imageUrl: 'assets/images/Rectangle5.png',
                label: 'São Vicente',
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class HoverImage extends StatefulWidget {
  final String imageUrl;
  final String label;

  const HoverImage({required this.imageUrl, required this.label, super.key});

  @override
  _HoverImageState createState() => _HoverImageState();
}

class _HoverImageState extends State<HoverImage> {
  bool _hovering = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => _mouseEnter(true),
      onExit: (_) => _mouseEnter(false),
      child: Stack(
        children: <Widget>[
          Image.network(
            widget.imageUrl,
            width: 608,
            height: 202,
          ),
          Positioned(
            left: 66,
            right: 66,
            bottom: 60,
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 200),
              color: _hovering ? Colors.black : Colors.transparent,
              width: _hovering ? 30 : 0,
              height: _hovering ? 25 : 0, // Altura ajustada para 30 quando hovering
              child: Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 4.0),
                  child: Text(
                    widget.label,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _mouseEnter(bool hovering) {
    setState(() {
      _hovering = hovering;
    });
  }
}
