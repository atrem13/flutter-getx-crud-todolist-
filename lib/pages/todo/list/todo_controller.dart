import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:openaccess/models/TodoModel.dart';
import 'package:openaccess/services/api_controller.dart';

class TodoController extends GetxController {
  var todos = <TodoModel>[].obs;
  var todoIsFetching = false.obs;
  @override
  void onInit() {
    super.onInit();
    getTodoList();
  }

  showAlert(String text) {
    Get.defaultDialog(
      title: "Information",
      content: Center(
        child: Column(
          children: [
            Text('${text}'),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {
                    Get.back();
                  },
                  child: Text('ok'),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  removeTodo(String id) async {
    Get.defaultDialog(
      title: "Warning",
      content: Center(
        child: Column(
          children: [
            Text('are you sure want to remove data?'),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {
                    Get.back();
                  },
                  child: Text('Cancel'),
                ),
                TextButton(
                  onPressed: () async {
                    Response response =
                        await ApiController().removeTodo(id: id);
                    if (response.statusCode == 200) {
                      todos.removeWhere(
                          (element) => element.id == int.parse(id));
                      update(['todo-list']);
                      Get.back();
                      showAlert('Data deleted successfully');
                    } else {
                      throw Exception('Failed to delete todo');
                    }
                  },
                  child: Text('Delete'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
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
