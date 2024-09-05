import 'package:flutter/material.dart';
import 'dart:math';

class Tela4 extends StatefulWidget {
  @override
  _Tela4State createState() => _Tela4State();
}

class _Tela4State extends State<Tela4> {
  // Lista de times de futebol
  final List<String> _timesDeFutebol = [
    'Barcelona',
    'Real Madrid',
    'Manchester United',
    'Liverpool',
    'Bayern Munich',
    'Juventus',
    'Paris Saint-Germain',
    'Chelsea',
    'Manchester City',
    'AC Milan'
  ];

  String _timeSelecionado = "Clique no botão para gerar um time";

  void _gerarTimeAleatorio() {
    final random = Random();
    setState(() {
      _timeSelecionado = _timesDeFutebol[random.nextInt(_timesDeFutebol.length)];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Tela Número 4",
          style: TextStyle(
            color: Colors.white, // Cor branca para o texto do AppBar
          ),
        ),
        backgroundColor: const Color.fromARGB(221, 0, 0, 0), // Cor dark para o AppBar
      ),
      body: Padding(
        padding: EdgeInsets.all(32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            ElevatedButton(
              onPressed: _gerarTimeAleatorio,
              child: Text('Gerar Time Aleatório'),
            ),
            SizedBox(height: 20),
            Text(
              _timeSelecionado,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white, // Cor de texto adaptada ao tema dark
              ),
            ),
          ],
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 0, 0, 0), // Cor de fundo escura
    );
  }
}
