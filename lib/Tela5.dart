import 'dart:async';
import 'package:flutter/material.dart';

class Tela5 extends StatefulWidget {
  @override
  _Tela5State createState() => _Tela5State();
}

class _Tela5State extends State<Tela5> {
  Timer? _timer;
  int _elapsedTime = 0; // Tempo decorrido em segundos
  bool _isRunning = false; // Indica se o cronômetro está em execução

  @override
  void initState() {
    super.initState();
    _startClock(); // Inicia o relógio
  }

  void _startClock() {
    Timer.periodic(Duration(seconds: 1), (Timer timer) {
      if (_isRunning) {
        setState(() {
          _elapsedTime++;
        });
      }
    });
  }

  void _startStopTimer() {
    setState(() {
      if (_isRunning) {
        _isRunning = false;
        _timer?.cancel();
      } else {
        _isRunning = true;
        _timer = Timer.periodic(Duration(seconds: 1), (Timer timer) {
          setState(() {
            _elapsedTime++;
          });
        });
      }
    });
  }

  void _resetTimer() {
    setState(() {
      _isRunning = false;
      _elapsedTime = 0;
      _timer?.cancel();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tela Número 5"),
        backgroundColor: const Color.fromARGB(221, 0, 0, 0), // Cor dark para o AppBar
      ),
      body: Padding(
        padding: EdgeInsets.all(32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _buildClock(),
            SizedBox(height: 20),
            _buildTimerControls(),
          ],
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 0, 0, 0), // Cor de fundo escura
    );
  }

  Widget _buildClock() {
    final now = DateTime.now();
    return Column(
      children: <Widget>[
        Text(
          "${now.hour.toString().padLeft(2, '0')}:${now.minute.toString().padLeft(2, '0')}:${now.second.toString().padLeft(2, '0')}",
          style: TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.bold,
            color: Colors.white, // Cor do texto do relógio
          ),
        ),
        SizedBox(height: 20),
        Text(
          "Cronômetro: ${(_elapsedTime ~/ 60).toString().padLeft(2, '0')}:${(_elapsedTime % 60).toString().padLeft(2, '0')}",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.white, // Cor do texto do cronômetro
          ),
        ),
      ],
    );
  }

  Widget _buildTimerControls() {
    return Column(
      children: <Widget>[
        ElevatedButton(
          onPressed: _startStopTimer,
          child: Text(_isRunning ? "Parar" : "Iniciar"),
          style: ElevatedButton.styleFrom(
          ),
        ),
        SizedBox(height: 10),
        ElevatedButton(
          onPressed: _resetTimer,
          child: Text("Zerar"),
          style: ElevatedButton.styleFrom(
          ),
        ),
      ],
    );
  }
}
