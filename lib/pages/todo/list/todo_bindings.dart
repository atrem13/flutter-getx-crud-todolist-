import 'package:get/get.dart';
import './todo_controller.dart';

class TodoBindings implements Bindings {
    @override
    void dependencies() {
        Get.put(TodoController());
    }
}