import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class PaginaStatefull extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _PaginaStatefulState();
}

class _PaginaStatefulState extends State <PaginaStatefull>{
  final estiloTtexto = TextStyle(fontSize: 27);
  final estiloRes = TextStyle(fontSize: 120, fontFamily: 'Georgia');
  int contador = 65;
  String valor = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Challenge 01 - Gladys Hilaquita"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Letra:", style: estiloTtexto),
            Text("$valor",style: estiloRes)
          ],
        ),
      ),
      floatingActionButton: _creaButton(),
    );
  }

  Widget _creaButton(){
    return  Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        FloatingActionButton(
          onPressed: (){
            setState(() {
              if(contador >=65){
                valor = String.fromCharCode(contador);
                contador --;
              }else contador = 90;

            });
            print("Resultado:$valor"); //consola
          },
          child: Icon(Icons.navigate_before),
        ),
        SizedBox(width: 10.0),
        FloatingActionButton(
          onPressed: (){
            setState(() {

              if(contador <=90){
                valor = String.fromCharCode(contador);
                contador ++;
              }else contador = 65;

            });
            print("Resultado:$valor"); //consola
          },
          child: Icon(Icons.navigate_next),
        )
      ],
    );
  }

  void _adiconar()=>setState(() {contador ++;});

  void _restar()=>setState(() {contador --;});
}