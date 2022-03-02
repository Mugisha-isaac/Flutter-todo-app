import 'package:flutter/material.dart';

class NewTodo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _NewTodoState();
}

class _NewTodoState extends State<NewTodo> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      child: Text("Hello flutter developer..!!"),
    );
  }
}
