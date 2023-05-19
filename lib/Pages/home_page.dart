import 'package:flutter/material.dart';

import '../service/gerador_numero_aleatorio.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
int numeroGerado = 0;
int quantidadeClick = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text(
          "Meu App"
          //style: GoogleFonts.pacifico()
        ),
      ),
      body: Container(
        width: double.infinity,
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("O numero gerado foi $numeroGerado"),
            Text("Foi clicado $quantidadeClick vezes"),
             Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  color: Colors.amber,
                  child: const Text("Nome:")
                ),
                Container(
                  color: Colors.red,
                  child: const Text("Guilherme Pereira")
                  ),
                Container(
                  color: Colors.green,
                  child: const Text("30")
                  ),
              ],
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
      child: const Icon(Icons.add),
      onPressed: (){
        setState(() {
        numeroGerado = GeradorNumeroAleatorio.gerarNumeroAleatorio(1000);
        quantidadeClick ++;
        });
      },
      ),
    );
  }
}