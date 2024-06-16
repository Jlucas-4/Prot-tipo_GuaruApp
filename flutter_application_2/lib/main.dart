import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_2/seg_pag.dart';

void main() {
  runApp(const MaterialApp (title: "App",
      home: MainApp(),));
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
          leading: Container(
            height: 40,
            width: 30,
            decoration: const BoxDecoration(
                image: DecorationImage(
              image: AssetImage('assets/images/bandeira.png'),
            )),
          ),
          backgroundColor: const Color.fromARGB(255, 217, 217, 217),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.menu),
            )
          ],
        ),
        body: ListView(
          padding: const EdgeInsets.only(top: 65),
          children: <Widget>[
            // Primeiro Container com largura controlada
            Container(
              height: 190,
              width: 40,
              child: Row(
                children: <Widget>[
                  const SizedBox(
                      width: 2), // Espaçamento à esquerda do Container
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(70),
                        image: const DecorationImage(
                            image: AssetImage('assets/images/praia.jpg',)),
                      ),
                    ),
                  ),
                  const SizedBox(
                      width: 2), // Espaçamento à direita do Container
                ],
              ),
            ),
            const SizedBox(height: 20), // Espaçamento entre os containers
            // Segundo Container com largura controlada
            Container(
              height: 126,
              child: Row(
                children: <Widget>[
                  const SizedBox(
                      width: 20), // Espaçamento à esquerda do Container
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                        border: Border.all(
                          color: Colors.black,
                        ),
                      ),
                      child: Stack(
                        children: [
                          const Positioned(
                            top: 20,
                            left: 20,
                            child: Icon(
                              Icons.search, // Ícone de lupa
                              size: 40.0, // Tamanho do ícone
                              color: Colors.black, // Cor do ícone
                            ),
                          ),
                          const SizedBox(
                              width: 30.0), // Espaço entre o ícone e o texto
                          Column(children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Padding(padding: EdgeInsets.all(40.0)),
                                const Text(
                                  'DESTINO: ',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    fontSize: 17.0,
                                    height: 4.0,
                                  ),
                                ),
                                const Text(
                                  'GUARUJÁ',
                                  style: TextStyle(
                                    fontSize: 17.0,
                                    fontWeight: FontWeight.bold,
                                    height: 4.0,
                                  ),
                                ),
                                Column(
                                 
                                  children: [
                                    Positioned(
                                        top: 1,
                                        bottom: 70.0,
                                        left: 1,
                                        right: 1,
                                        child: TextButton(onPressed:(){
                                        Navigator.push(
                                        context, MaterialPageRoute(builder: (context) => const SegPag()),
                                        );
                                        }, child: const Text("Pontos Turísticos", style: TextStyle(color: Colors.black),), //aqui vai o texto q vai aparecer
                                        ),
                                )],
                                ),
                              ],
                            ),
                          ]),
                          Positioned(
                            top: 70.0, // Posição ajustável da linha
                            left: 0.0,
                            right: 0.0,
                            child: Container(
                              height: 2.0, // Altura da linha
                              color: Colors.black, // Cor da linha
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                      width: 20), // Espaçamento à direita do Container
                ],
              ),
            ),
            const SizedBox(height: 20), // Espaçamento entre os containers
            // Terceiro Container com largura controlada
            Container(
              height: 400,
              child: Row(
                children: <Widget>[
                  const SizedBox(
                      width: 20), // Espaçamento à esquerda do Container
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: const Color(0xFFF0F0F0)),
                      child: const Center(
                        child: Text(
                          ' Bem-vindos ao Guarujá! Uma cidade encantadora situada no litoral de São Paulo, conhecida por suas deslumbrantes praias, pontos turísticos cativantes e uma variedade de opções de hospedagem para todos os gostos e orçamentos. Permita-me guiá-lo por uma jornada visual e informativa através deste verdadeiro paraíso costeiro. Praias Deslumbrantes: O Guarujá é abençoado com algumas das praias mais deslumbrantes do Brasil, oferecendo areias douradas, águas cristalinas e uma atmosfera relaxante que atrai visitantes de todo o mundo. Aqui estão algumas das praias mais populares',
                          style: TextStyle(
                              color: Color.fromARGB(255, 10, 10, 10),
                              fontSize: 20),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                      width: 20), // Espaçamento à direita do Container
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
