import 'package:flutter/material.dart';
import 'TelaSecundaria.dart';
import 'Tela3.dart';
import 'Tela4.dart';
import 'Tela5.dart';

void main() {
  runApp(
    MaterialApp(
      home: TelaPrincipal(),
      debugShowCheckedModeBanner: false,
    ),
  );
}

class TelaPrincipal extends StatefulWidget {
  @override
  _TelaPrincipalState createState() => _TelaPrincipalState();
}

class _TelaPrincipalState extends State<TelaPrincipal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tela Principal', style: TextStyle(color:Colors.white)),
        backgroundColor: const Color.fromARGB(255, 1, 2, 63),
      ),
      body: Container(
        color: const Color.fromARGB(255, 1, 2, 63), // Cor de fundo para a tela principal
        padding: EdgeInsets.all(32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch, // Botões ocupando toda a largura
          children: <Widget>[
            Text(
              'Tela Principal',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 32), // Espaço entre o texto e os botões

            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TelaSecundaria()),
                );
              },
              child: Text('Ir para Tela Secundária'),
            ),
            SizedBox(height: 16),

            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Tela3()),
                );
              },
              child: Text('Ir para Tela 3'),
            ),
            SizedBox(height: 16),

            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Tela4()),
                );
              },
              child: Text('Ir para Tela 4'),
            ),
            SizedBox(height: 16),

            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Tela5()),
                );
              },
              child: Text('Ir para Tela 5'),
            ),
          ],
        ),
      ),
    );
  }
}
