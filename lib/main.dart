import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var _titulo = "Frases do Dia";
  var _txtBtn = "GERAR FRASE!";

  var _frases = [
    "É melhor construir aos poucos, do que acabar não construindo nada.",
    "Aquilo que não me mata só me fortalece.",
    "Todos nós somos sucetíveis a erros, aprenda a se perdoar primeiro.",
    "Não imporata o quão tenha errado no passado, o que vai definir seu futuro são suas escolhas daqui pra frente.",
    "Faça valer cada luta em sua vida, já que ela dará o gosto da vitória em suas conquistas.",
    "Se a vida quis ser uma arena, eis aqui um guerreiro de berço.",
    "Almeje grandes feitos e suas ações ecoará na eternidade!",
    "Um mar calmo, nunca fez um bom marinheiro."
  ];

  var _fraseGerada = "Vamos motivar o seu dia!!!";

  void _gerarFrases() {
    var numeroSorteado = Random().nextInt(_frases.length);

    setState(() {
      _fraseGerada = _frases[numeroSorteado];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_titulo),
        backgroundColor: Colors.purple[800],
      ),
      body: Center(
        child: Container(
          //width: double.infinity,
          padding: EdgeInsets.all(16),
          /*decoration: BoxDecoration(
              border: Border.all(width: 3,color: Colors.amber)
          ),*/
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Image.asset("images/acorde.jpg"),
              Text(
                _fraseGerada,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 25, fontStyle: FontStyle.italic, color: Colors.black),
              ),
              RaisedButton(
                child: Text(
                  _txtBtn,
                  style: TextStyle(fontSize: 17, color: Colors.white, fontWeight: FontWeight.bold),
                ),
                color: Colors.black,
                onPressed: _gerarFrases,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
