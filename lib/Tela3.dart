import 'package:flutter/material.dart';

class Tela3 extends StatefulWidget {
  @override
  _Tela3State createState() => _Tela3State();
}

class _Tela3State extends State<Tela3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tela Número 3", style: TextStyle(color:Colors.white)),
        backgroundColor: const Color.fromARGB(221, 0, 0, 0), // Cor dark para o AppBar
      ),
      body: Padding(
        padding: EdgeInsets.all(32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Image.network(
              'https://cdn.pensador.com/img/frase/jo/na/jonathan_cravo_para_toda_escuridao_ha_uma_luz_lqlnjyd.jpg', // Substitua pelo URL da sua imagem
              fit: BoxFit.cover,
            ),
          ],
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 0, 0, 0), // Cor de fundo escura
    );
  }
}
