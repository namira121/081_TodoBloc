import 'package:bloc/bloc.dart';
import 'package:tugasbloctodo_paml/model/todo.dart';

part 'todo_event.dart';
part 'todo_state.dart';

class TodoBloc extends Bloc<TodoEvent,TodoState>{
  TodoBloc(): super(TodoLoaded(todos: [], selectedDate: null)){
    on<TodoEventAdd>((event, emit){
      final currenState = state;
      if(currenState is TodoLoaded){
        final List<Todo> updatedTodos = List.from(currenState.todos);
        updatedTodos.add(Todo(title: event.title, date: event.date, isCompleted: false));
        emit(TodoLoaded(todos: updatedTodos, selectedDate: currenState.selectedDate));
      }
    }
    );

    on<TodoSelectDate>((event, emit){
      final currentState = state;
      if(currentState is TodoLoaded){
        emit(TodoLoaded(todos: currentState.todos, selectedDate: event.date));
      }
    });

    on<TodoEventComplete>((event, emit){
      final currentState = state;
      if (currentState is TodoLoaded){
        final List<Todo> updatedTodos = List.from(currentState.todos);

        if (event.index >= 0 && event.index < updatedTodos.length){
          updatedTodos[event.index] = Todo(
            title: updatedTodos[event.index].title,
            date: updatedTodos[event.index].date,
            isCompleted: !updatedTodos[event.index].isCompleted,
          );
        }
      }
    });
  }
}