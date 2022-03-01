// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';

class Counter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(40),
      child: const Text(
        "0/7",
        style: TextStyle(
          fontSize: 75,
          color: Colors.green,
        ),
      ),
    );
  }
}
