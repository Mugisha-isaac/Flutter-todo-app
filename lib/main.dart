// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:todo/widgets/counter.dart';
import 'package:todo/widgets/models/todo.dart';
import 'package:todo/widgets/new_todo.dart';
import 'package:todo/widgets/todo_cards.dart';
import 'package:todo/widgets/todo_list.dart';
import 'package:uuid/uuid.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<Todo> todos = [
    Todo(id: const Uuid(), title: "Pet the Cat", completed: false),
    Todo(id: const Uuid(), title: "Cleaning the House", completed: false),
    Todo(id: const Uuid(), title: "Having breakfast", completed: true)
  ];

  int _calculateTotalCompletions() {
    var totalCompletions = 0;

    todos.forEach((todo) {
      if (todo.completed) {
        totalCompletions++;
      }
    });
    return totalCompletions;
  }

  void _showAddTodoModal(BuildContext ctx) {
    showModalBottomSheet(
        context: context,
        builder: (bCtx) {
          return NewTodo(
            addTodo: _addTodo,
          );
        });
  }

  void _addTodo(String todo) {
    setState(() {
      todos.add(Todo(id: Uuid(), title: todo, completed: false));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Counter(
              numberOfTodos: todos.length,
              totalCompletions: _calculateTotalCompletions(),
            ),
            TodoList(
              todos: todos,
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _showAddTodoModal(context);
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
