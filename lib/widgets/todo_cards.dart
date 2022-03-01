import 'package:flutter/material.dart';

class TodoCard extends StatelessWidget {
  final String title;
  final bool completed;

  TodoCard({required this.title, required this.completed});

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      widthFactor: 0.9,
      child: Card(
        child: Container(
          padding: const EdgeInsets.all(20),
          height: 125,
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  title,
                  style: const TextStyle(
                      fontSize: 25, fontWeight: FontWeight.bold),
                ),
                Icon(
                  completed ? Icons.check : Icons.close,
                  color: completed ? Colors.green : Colors.red,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
