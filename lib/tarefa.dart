class Tarefa {
  String nome;
  DateTime data;
  bool concluido;

  Tarefa(String nome) {
    this.nome = nome;
    data = DateTime.now();
    concluido = false;
  }
}
