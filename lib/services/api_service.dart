import 'dart:developer';

import 'package:basic_mvc/models/todo.dart';
import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class ApiService {
  static late Dio dioClient;
  ApiService.init() {
    //
    BaseOptions options = BaseOptions(
      baseUrl: dotenv.env['BASE_URL'] ?? "http://localhost:3000",
    );

    dioClient = Dio(options);

    log("API Service Initialized");
    log("API URL: ${options.baseUrl}");
  }

  static Future<List<TodoModel>> getTodos() async {
    final response = await dioClient.get(
      "/todos",
    );

    if (response.statusCode != 200) {
      throw Exception("Failed to load todos");
    }

    List<TodoModel> todoList = List.generate(
      response.data.length,
      (index) {
        return TodoModel.fromJson(response.data[index]);
      },
    );

    return todoList;
  }
}
