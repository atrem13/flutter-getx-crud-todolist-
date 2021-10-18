import 'package:get/get.dart';
import 'package:openaccess/pages/todo/list/todo_page.dart';

class IndexController extends GetxController {
  var isloadWelcomePage = true.obs;
  @override
  void onInit() {
    super.onInit();
    startCountdownTimer();
  }

  @override
  void onClose() {}

  Future startCountdownTimer() async {
    print("Counter start");
    await Future.delayed(Duration(seconds: 2), () {
      Get.offAllNamed(TodoPage.route);
    });
  }
}
