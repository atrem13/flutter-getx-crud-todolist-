import 'package:get/get.dart';
import 'package:openaccess/pages/Index/Index_view.dart';
import 'package:openaccess/pages/Index/index_binding.dart';
import 'package:openaccess/pages/home/home.binding.dart';
import 'package:openaccess/pages/home/home_view.dart';
import 'package:openaccess/pages/notfound/notfound_view.dart';
import 'package:openaccess/pages/todo/create/todo_create_bindings.dart';
import 'package:openaccess/pages/todo/create/todo_create_page.dart';
import 'package:openaccess/pages/todo/list/todo_bindings.dart';
import 'package:openaccess/pages/todo/list/todo_page.dart';

class AppPages {
  static const INITIAL = IndexPage.route;

  static final routes = [
    GetPage(
      name: IndexPage.route,
      page: () => IndexPage(),
      binding: IndexBinding(),
    ),
    GetPage(
      name: HomePage.route,
      page: () => HomePage(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: TodoPage.route,
      page: () => TodoPage(),
      binding: TodoBindings(),
    ),
    GetPage(
      name: TodoCreatePage.route,
      page: () => TodoCreatePage(),
      binding: TodoCreateBindings(),
    )
  ];

  static final unknownRoute = GetPage(
    name: NotfoundPage.route,
    page: () => NotfoundPage(),
  );
}
