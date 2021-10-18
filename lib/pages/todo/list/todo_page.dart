import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:openaccess/components/SkeletonLoading.dart';
import 'package:openaccess/pages/todo/create/todo_create_page.dart';
import './todo_controller.dart';

class TodoPage extends GetView<TodoController> {
  static const route = "/todo-page";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TodoPage'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: 20, right: 20, left: 20),
          child: Obx(
            () => Column(
              children: controller.todoIsFetching.value
                  ? skeleton
                  : controller.todos.value
                      .map((e) => todoItem(title: "${e.title}"))
                      .toList(),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.toNamed(TodoCreatePage.route);
        },
        child: Icon(Icons.add),
      ),
    );
  }

  Widget todoItem({
    required String title,
  }) {
    return Row(
      children: [
        Flexible(
          fit: FlexFit.tight,
          flex: 2,
          child: Container(
            child: Text("$title"),
          ),
        ),
        Flexible(
          fit: FlexFit.tight,
          flex: 1,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () {
                  print("Edit");
                },
                icon: Icon(
                  Icons.edit,
                  color: Colors.yellow,
                ),
              ),
              IconButton(
                onPressed: () {
                  print("Remove");
                },
                icon: Icon(
                  Icons.delete,
                  color: Colors.redAccent,
                ),
              )
            ],
          ),
        )
      ],
    );
  }

  List<Widget> skeleton = [
    SkeletonLoading(
      height: 20,
    ),
    SizedBox(
      height: 15,
    ),
    SkeletonLoading(
      height: 20,
    ),
    SizedBox(
      height: 15,
    ),
    SkeletonLoading(
      height: 20,
    ),
    SizedBox(
      height: 15,
    ),
    SkeletonLoading(
      height: 20,
    ),
    SizedBox(
      height: 15,
    ),
    SkeletonLoading(
      height: 20,
    ),
  ];
}
