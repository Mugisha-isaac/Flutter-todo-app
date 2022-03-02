import 'package:flutter/material.dart';
import 'package:todo/widgets/models/todo.dart';
import 'package:todo/widgets/todo_cards.dart';

class TodoList extends StatelessWidget {
  final List<Todo> todos;

  TodoList({required this.todos});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      child: ListView.builder(
        itemBuilder: (ctx, index) {
          return TodoCard(
              title: todos[index].title, completed: todos[index].completed);
        },
        itemCount: todos.length,
      ),
    );
  }
}
