import 'package:flutter/material.dart';
import 'package:get/get.dart' show GetView, Obx, RxBoolExt;
import 'package:openaccess/global.dart';
import 'package:openaccess/pages/Index/Index_controller.dart';
import 'package:openaccess/pages/home/home_view.dart';
import 'package:openaccess/pages/splash/splash_view.dart';
import 'package:openaccess/pages/todo/list/todo_page.dart';

class IndexPage extends GetView<IndexController> {
  static const route = '/index-page';
  const IndexPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
        () => controller.isloadWelcomePage.isTrue ? SplashPage() : TodoPage());
  }
}
