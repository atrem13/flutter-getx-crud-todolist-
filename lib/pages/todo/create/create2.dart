import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'todo_create_controller.dart';

class TodoCreatePage extends GetView<TodoCreateController> {
  static const route = "/todo-create-page";
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CreatePage'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
                controller: controller.titleController,
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
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    if (controller.todoEdit == null) {
                      controller.createTodo;
                    } else {
                      controller.updateTodo;
                    }
                  }
                },
                child: Text("Submit"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
