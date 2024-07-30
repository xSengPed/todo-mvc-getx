import 'dart:developer';

import 'package:basic_mvc/views/home/home.controller.dart';
import 'package:basic_mvc/views/todo_page/todo_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());

    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page"),
      ),
      body: Column(
        children: [
          Obx(
            () => Text(controller.count.value.toString()),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    controller.increment();
                  },
                  child: Text("Increment")),
              ElevatedButton(
                  onPressed: () {
                    controller.decrement();
                  },
                  child: Text("Decrement")),
              ElevatedButton(
                  onPressed: () {
                    Get.to(() => TodoPage());
                  },
                  child: Text("Todo List")),
            ],
          ),
        ],
      ),
    );
  }
}
