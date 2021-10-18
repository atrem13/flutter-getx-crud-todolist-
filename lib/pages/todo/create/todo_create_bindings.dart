import 'package:get/get.dart';
import 'todo_create_controller.dart';

class TodoCreateBindings implements Bindings {
  @override
  void dependencies() {
    Get.put(TodoCreateController());
  }
}
