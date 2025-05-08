part of "todo_bloc.dart";

sealed class TodoEvent {}

final class TodoEventAdd extends TodoEvent {
  final String title;
  final DateTime date;
  //untuk menambah todo

  //membuat constructor untuk addTodo
  TodoEventAdd({required this.title, required this.date});
}

final class TodoEventComplete extends TodoEvent {
  //untuk mengganti status
  final int index; //untuk membaca array todo

  TodoEventComplete({
    required this.index,
  }); //constructor untuk membuat event mengganti status
}

final class TodoSelectDate extends TodoEvent {
  final DateTime date;

  TodoSelectDate({required this.date});
}
