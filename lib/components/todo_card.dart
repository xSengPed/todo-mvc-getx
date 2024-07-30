import 'package:basic_mvc/models/todo.dart';
import 'package:flutter/material.dart';

class TodoCard extends StatelessWidget {
  final TodoModel todo;
  const TodoCard({super.key, required this.todo});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          Text(todo.title.toString()),
          Text(todo.id.toString()),
          Text(todo.completed.toString()),
        ],
      ),
    );
  }
}
