import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'todo_create_controller.dart';

class TodoCreatePage extends GetView<TodoCreateController> {
  static const route = "/todo-create-page";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CreatePage'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(
                hintText: "Yours is my focus today",
                labelText: "Your focus",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(0),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(onPressed: () {}, child: Text("Submit"))
          ],
        ),
      ),
    );
  }
}
