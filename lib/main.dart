import 'package:flutter/material.dart';

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
  Widget getItemRow() {
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
        children: [Text("Lavar o carro"), Text("30/01/2021")],
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
          Expanded(
              child: ListView(
            children: <Widget>[
              getItemRow(),
              getItemRow(),
              getItemRow(),
              getItemRow(),
              getItemRow(),
              getItemRow(),
              getItemRow(),
              getItemRow(),
              getItemRow(),
              getItemRow(),
              getItemRow(),
              getItemRow(),
              getItemRow(),
              getItemRow(),
              getItemRow(),
              getItemRow(),
              getItemRow(),
              getItemRow(),
              getItemRow()
            ],
          ))
        ],
      ),
    );
  }
}
