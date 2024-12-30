class ToDo {
  String? id;
  String? todoText;
  String? subText;
  bool isDone;

  ToDo({
    required this.id,
    required this.todoText,
    required this.subText,
    this.isDone = false,
  });

  static List<ToDo> todoList() {
    return [
      ToDo(
          id: '01',
          todoText: 'Buy New Home',
          subText: 'Only 7.3 % savings is done.'),
      ToDo(
          id: '02',
          todoText: 'Buy New Car',
          subText: '100 % savings were done.',
          isDone: true),
    ];
  }
}
