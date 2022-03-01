// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:todo/widgets/counter.dart';
import 'package:todo/widgets/models/todo.dart';
import 'package:todo/widgets/todo_cards.dart';

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
    Todo(id: "1ufhehhsjj", title: "Pet the Cat", completed: false),
    Todo(id: "hhdhjjkkak", title: "Cleaning the House", completed: false),
    Todo(id: "ncnbdhhhsj", title: "Having breakfast", completed: true)
  ];

  int calculateTotalCompletions() {
    var totalCompletions = 0;

    todos.forEach((todo) {
      if (todo.completed) {
        totalCompletions++;
      }
    });
    return totalCompletions;
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
              totalCompletions: calculateTotalCompletions(),
            ),
            ...todos.map((todo) => TodoCard(
                  title: todo.title,
                  completed: todo.completed,
                ))
          ],
        ),
      ),
    );
  }
}
