sealed class TodoEvent{}

final class TodoEventAdd extends TodoEvent{
  final String title;
  final DateTime date;
  //untuk menambah todo

  //membuat constructor untuk addTodo
  TodoEventAdd({required this.title, required this.date});
}