import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:openaccess/pages/home/home_controller.dart';

class HomePage extends GetView<HomeController> {
  static const route = '/home-page';
  final HomeController homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Hello World"),
      ),
    );
  }
}
