// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Layout extends StatefulWidget {
  const Layout({super.key});
  @override
  State createState() => LayoutState();
}

class LayoutState extends State<Layout> {
  Row criarRow(String texto) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          margin: EdgeInsets.only(top: 15),
          padding: EdgeInsets.all(15),
          // height: 50,
          width: 350,
          color: Colors.blueAccent,
          child: Text(
            texto,
            style: TextStyle(color: Colors.white54, fontSize: 24),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        //? Barra de Título
        appBar: AppBar(title: const Text("Layout - fluttion")),
        //? Menu Lateral (hambúrguer)
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              // Cabeçalho do menu
              DrawerHeader(
                decoration: BoxDecoration(color: Colors.blue),
                child: Text("Itens do menu"),
              ),
              //! item 1
              ListTile(
                title: const Text("Flutter"),
                subtitle: const Text("tudo São Widgets"),
                leading: Icon(
                  Icons.flash_on,
                  color: Colors.yellow.shade500,
                  size: 32,
                ),
                trailing: Icon(Icons.keyboard_arrow_right_sharp),
                onTap: () {
                  //code here method or func
                  Navigator.pop(context);
                },
              ),
              //! item 2
              ListTile(
                title: const Text("Dart"),
                subtitle: const Text("É Fácil"),
                trailing: Icon(Icons.keyboard_arrow_right),
                leading: Icon(
                  Icons.mood,
                  color: Colors.deepPurpleAccent.shade700,
                  size: 32,
                ),
                onTap: () {
                  //code here method or func
                  Navigator.pop(context);
                },
              ),
              //! item 3
              ListTile(
                title: const Text("Cafessíneo"),
                subtitle: const Text("Quiero Café"),
                trailing: Icon(Icons.keyboard_arrow_right_rounded),
                leading: Icon(
                  Icons.coffee,
                  color: Colors.brown.shade700,
                  size: 32,
                ),
                onTap: () {
                  //code here method or func
                  Navigator.pop(context);
                },
              ),
              //! item 4
              ListTile(
                title: const Text("Configurações"),
                subtitle: const Text("Ajustes no Sistema"),
                trailing: Icon(Icons.keyboard_arrow_right_rounded),
                leading: Icon(
                  Icons.settings_rounded,
                  color: Colors.blueGrey[600],
                  size: 32,
                ),
                onTap: () {
                  //code here method or func
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),

        body: Column(
          children: [
            criarRow("linha teste"),
            criarRow("Segunda Linha"),
            criarRow("terceira linha"),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 15),
                  width: 350,
                  color: Colors.black87,
                  padding: EdgeInsets.all(15),
                  child: Text(
                    "linha crida manualmente",
                    style: TextStyle(color: Colors.white60, fontSize: 13),
                  ),
                )
              ],
            )
          ],
        ),
        //? Corpo App
        // body: Center(
        //   child: ElevatedButton(
        //     child: Text("Mostrar SnackBar"),
        //     onPressed: () {
        //       final snackBar = SnackBar(
        //         content: Text("fala, ola a snackBar aqui"),
        //         duration: Duration(milliseconds: 2500),
        //         behavior: SnackBarBehavior.floating,
        //         action: SnackBarAction(
        //             label: "ok", onPressed: () {} //aqui vai o codigo de ação
        //             ),
        //       );
        //       ScaffoldMessenger.of(context).showSnackBar(snackBar);
        //     },
        //   ),
        // ),

        //? Barra de Ícones (inferior)
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            //Icone Config
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: "Configuração"),
            //Icone Config
            BottomNavigationBarItem(icon: Icon(Icons.logout), label: "Logout"),
          ],
        ),
      ),
    );
  }
}
