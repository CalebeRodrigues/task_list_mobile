import 'package:flutter/material.dart';

void main() {
  runApp(new ListaTarefas());
}

class ListaTarefas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text("Lista de tarefas"),
        ),
        body: Column(),
      ),
    );
  }
}
