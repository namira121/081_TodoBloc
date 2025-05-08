import 'package:bloc/bloc.dart';
import 'package:tugasbloctodo_paml/model/todo.dart';

part 'todo_event.dart';
part 'todo_state.dart';

class TodoBloc extends Bloc<TodoEvent,TodoState>{
  TodoBloc(): super(TodoLoaded(todos: [], selectedDate: null)){
    
  }
}