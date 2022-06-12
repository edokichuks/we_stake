import 'package:flutter/material.dart';
class TodoScreen extends StatelessWidget {
  const TodoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Todo Screen',
        style: TextStyle(
          color: Colors.white,
          fontSize: 20,
        ),
        ),
      ),
      body: Center(
        child: Text(
          'Todo Screen'
        ),
      ),
    );
  }
}
