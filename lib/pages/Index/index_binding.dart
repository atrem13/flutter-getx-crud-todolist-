import 'package:get/get.dart' show Bindings, Get, Inst;
import 'package:openaccess/pages/Index/Index_controller.dart';

class IndexBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<IndexController>(() => IndexController());
  }
}
