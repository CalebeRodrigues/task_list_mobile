import 'package:flutter/material.dart';
import 'package:lista_tarefas_app/tarefa.dart';

void main() {
  runApp(new ListaTarefas());
}

class ListaTarefas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new ListaScreen(),
    );
  }
}

class ListaScreen extends StatelessWidget {
  List<Tarefa> tarefas = new List<Tarefa>();

  void adicionaTarefa(String tarefa) {
    tarefas.add(new Tarefa(tarefa));
  }

  Widget getItemRow(Tarefa tarefa) {
    return new Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
      IconButton(
          icon: new Icon(
            Icons.check_box,
            color: Colors.lightGreen,
          ),
          iconSize: 42.0,
          onPressed: () {}),
      new Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            tarefa.nome,
            style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
          ),
          Text(tarefa.data.toIso8601String())
        ],
      )
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Lista de tarefas"),
        backgroundColor: Colors.lightGreen,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Container(
              padding: EdgeInsets.all(8.0),
              child: TextField(
                onSubmitted: (value) {
                  adicionaTarefa(value);
                },
              )),
          Expanded(
              child: ListView(
            children: <Widget>[
              getItemRow(new Tarefa("Lavar o carro")),
              getItemRow(new Tarefa("Escovar os dentes")),
            ],
          ))
        ],
      ),
    );
  }
}
