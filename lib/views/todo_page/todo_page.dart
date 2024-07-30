import 'package:basic_mvc/components/todo_card.dart';
import 'package:basic_mvc/views/todo_page/todo_page.controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TodoPage extends StatelessWidget {
  const TodoPage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(TodoPageController());
    return Scaffold(
      appBar: AppBar(
        title: const Text("Todo Page"),
      ),
      body: Column(
        children: [
          Flexible(child: Obx(
            () {
              return ListView.builder(
                itemCount: controller.todosList.length,
                itemBuilder: (context, index) {
                  return TodoCard(todo: controller.todosList[index]);
                },
              );
            },
          ))
        ],
      ),
    );
  }
}
