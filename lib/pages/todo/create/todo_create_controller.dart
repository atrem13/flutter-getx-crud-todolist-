import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:openaccess/pages/todo/list/todo_controller.dart';
import 'package:openaccess/models/TodoModel.dart';
import 'package:openaccess/services/api_controller.dart';

class TodoCreateController extends GetxController {
  TextEditingController titleController = TextEditingController();
  TodoController todoController = Get.find<TodoController>();
  TodoModel? todoEdit;

  onInit() {
    super.onInit();
    var args = Get.arguments;
    if (args != null && args['todo'] != null) {
      todoEdit = args['todo'];
      titleController.text = '${todoEdit?.title}';
    }
  }

  createTodo() async {
    Response response =
        await ApiController().postTodo(title: titleController.text);
    if (response.statusCode == 201) {
      todoController.todos.value = [
        ...todoController.todos.value,
        TodoModel.fromJson(response.body)
      ];
      todoController.update(['todo-list']);
      Get.back();
      todoController.showAlert('Data created successfully');
    } else {
      throw Exception('Failed to create todo');
    }
  }

  updateTodo() async {
    Response response = await ApiController()
        .updateTodo(title: titleController.text, id: '${todoEdit?.id}');
    print(response.body);
    if (response.statusCode == 200) {
      // todoEdit = TodoModel.fromJson(response.body);
      todoEdit?.title = titleController.text;
      // todoController.todos.value = [
      //   ...todoController.todos.value,
      //   TodoModel.fromJson(response.body)
      // ];
      todoController.update(['todo-list']);
      Get.back();
      todoController.showAlert('Data updated successfully');
    } else {
      throw Exception('Failed to update todo');
    }
  }
}
