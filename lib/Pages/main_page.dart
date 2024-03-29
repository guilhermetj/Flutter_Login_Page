import 'package:flutter/material.dart';
import 'package:trilhaapp/Pages/pagina1.dart';
import 'package:trilhaapp/Pages/pagina2.dart';
import 'package:trilhaapp/Pages/pagina3.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  PageController controller = PageController(initialPage: 0);
  int posicaoPagina = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: const Text("Main Page")),
        drawer: Drawer(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InkWell(
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    width: double.infinity,
                    child: const Text("Dados Cadastrais"),
                  ),
                  onTap: () {},
                ),
                const Divider(),
                const SizedBox(
                  height: 10,
                ),
                InkWell(
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    width: double.infinity,
                    child: const Text("Termos de uso e privacidade"),
                  ),
                  onTap: () {},
                ),
                const Divider(),
                const SizedBox(
                  height: 10,
                ),
                InkWell(
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    width: double.infinity,
                    child: const Text("Dados Cadastrais"),
                  ),
                  onTap: () {},
                ),
                const Divider(),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ),
        body: Column(
          children: [
            Expanded(
              child: PageView(
                controller: controller,
                onPageChanged: (value){
                  setState(() {
                     posicaoPagina = value;
                  });
                },
                children: const [Pagina1(), Pagina2(), Pagina3()],
              ),
            ),
             BottomNavigationBar(
              onTap: (value) {
                  controller.jumpToPage(value);
                },
              currentIndex: posicaoPagina, 
              items: const [
              BottomNavigationBarItem(label: "Pag1", icon: Icon(Icons.home)),
              BottomNavigationBarItem(label: "Pag2", icon: Icon(Icons.add)),
              BottomNavigationBarItem(label: "Pag3", icon: Icon(Icons.person))
            ])
          ],
        ),
      ),
    );
  }
}
