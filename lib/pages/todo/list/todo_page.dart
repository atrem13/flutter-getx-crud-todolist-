import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:openaccess/components/SkeletonLoading.dart';
import 'package:openaccess/pages/todo/create/todo_create_page.dart';
import './todo_controller.dart';
import 'package:openaccess/models/TodoModel.dart';

class TodoPage extends GetView<TodoController> {
  static const route = "/todo-page";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TodoPage'),
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: GestureDetector(
              onTap: () {
                Get.toNamed(TodoCreatePage.route);
              },
              child: Icon(Icons.add),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: 20, right: 20, left: 20),
          child: GetBuilder<TodoController>(
            id: 'todo-list',
            builder: (controller) => Column(
              children: controller.todoIsFetching.value
                  ? skeleton
                  : controller.todos.value
                      .map((e) => todoItem(model: e))
                      .toList(),
            ),
          ),
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {
      //     Get.toNamed(TodoCreatePage.route);
      //   },
      //   child: Icon(Icons.add),
      // ),
    );
  }

  Widget todoItem({
    required TodoModel model,
  }) {
    return Row(
      children: [
        Flexible(
          fit: FlexFit.tight,
          flex: 2,
          child: Container(
            child: Text("${model.title}"),
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
                  Get.toNamed(TodoCreatePage.route, arguments: {
                    'todo': model,
                  });
                },
                icon: Icon(
                  Icons.edit,
                  color: Colors.yellow,
                ),
              ),
              IconButton(
                onPressed: () {
                  controller.removeTodo('${model.id}');
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
