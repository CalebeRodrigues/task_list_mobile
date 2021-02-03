class Tarefa {
  String nome;
  DateTime data;
  bool concluido;

  Tarefa(String nome) {
    this.nome = nome;
    data = DateTime.now();
    concluido = false;
  }

  String converteData() {
    return addZero(data.day.toString()) +
        "/" +
        addZero(data.month.toString()) +
        "/" +
        addZero(data.year.toString());
  }

  String addZero(String number) {
    return (int.parse(number) > 9) ? "" + number : "0" + number;
  }
}
