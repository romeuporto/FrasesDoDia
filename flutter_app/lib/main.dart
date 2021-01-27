
import 'dart:math';

import 'package:flutter/material.dart';

void main(){
  runApp (MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
  ));

}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  var _frases = [
    "A persistência é o caminho do êxito.",
    "As pessoas costumam dizer que a motivação não dura sempre. Bem, nem o efeito do banho, por isso recomenda-se diariamente.",
    "No meio da dificuldade encontra-se a oportunidade.",
    "É parte da cura o desejo de ser curado.",
  ];
  var _fraseGerada = "Clique aqui para gera uma frase";
  void _gerarFrase(){
    var numeroSorteado = Random().nextInt(_frases.length);
    setState(() {
      _fraseGerada = _frases[numeroSorteado];
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Frases do dia"),
          backgroundColor: Colors.grey,
        ),
        body: Center(
            child: Container(
              padding: EdgeInsets.all(16),
              //width: double.infinity,
              /*decoration: BoxDecoration(
              border: Border.all(width: 3, color: Colors.amber)
          ),*/
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Image.asset("images/logo.png"),
                  Text(
                    _fraseGerada,
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                        fontSize: 20,
                        fontStyle: FontStyle.italic,
                        color: Colors.black
                    ),
                  ),
                  RaisedButton(
                    child: Text(
                      "Nova Frase",
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    color: Colors.green,
                    onPressed: _gerarFrase,
                  )
                ],
              ),
            )
        )
    );
  }
}
