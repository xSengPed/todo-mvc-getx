import 'dart:developer';
import 'package:basic_mvc/models/todo.dart';
import 'package:basic_mvc/services/api_service.dart';
import 'package:get/get.dart';

class TodoPageController extends GetxController {
  RxList<TodoModel> todosList = <TodoModel>[].obs;
  RxBool isLoading = false.obs;
  void setTodos() async {
    final repsonse = await ApiService.getTodos();
    todosList.value = repsonse;
  }

  @override
  void onInit() {
    setTodos();
    super.onInit();
  }

  @override
  void onClose() {
    log("Close Todo");
    super.onClose();
  }
}
