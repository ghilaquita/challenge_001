import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PaginaInicio extends StatelessWidget{

  final estiloTtexto = TextStyle(fontSize: 25);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Challenge 01"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Ingrese cantidad de click:", style: estiloTtexto),
            Text("0",style: estiloTtexto)
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          print("Resultado:");
        },
        child: Icon(Icons.accessibility_new_outlined),
      ),
    );
  }

}