import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:openaccess/models/TodoModel.dart';
import 'package:openaccess/services/api_controller.dart';

class TodoController extends GetxController {
  var todos = <TodoModel>[].obs;
  var todoIsFetching = false.obs;
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    getTodoList();
  }

  removeTodo(String id) async {
    Response response = await ApiController().removeTodo(id: id);
    print(response.statusCode);
    if (response.statusCode == 200) {
      print('before delete');
      todos.removeWhere((element) => element.id == int.parse(id));
      update(['todo-list']);
      print('after delete');
    } else {
      throw Exception('Failed to delete todo');
    }
  }

  getTodoList() async {
    todoIsFetching.value = true;
    Response response = await ApiController().getTodo();
    if (response.statusCode == 200) {
      todoIsFetching.value = false;
      todos.value = ((response.body) as List)
          .map((json) => TodoModel.fromJson(json))
          .toList();
      update(['todo-list']);
      return;
    }

    Get.defaultDialog(
      title: "Masalah Koneksi",
      middleText: "Gagal terkoneksi dengan server",
      actions: [
        TextButton(
          onPressed: () {
            getTodoList();
          },
          child: Text("Ulangi"),
        ),
        TextButton(
          onPressed: () {
            Get.back();
          },
          child: Text(
            "Tutup",
            style: TextStyle(
              color: Colors.redAccent,
            ),
          ),
        )
      ],
    );
  }
}
