import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:openaccess/common/langs/translation_service.dart';
import 'package:openaccess/global.dart';
import 'package:openaccess/pages/Index/Index_view.dart';
import 'package:openaccess/pages/Index/index_binding.dart';
import 'package:openaccess/router/app_pages.dart';

void main() => Global.init().then((e) => runApp(MyApp()));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      // darkTheme: darkTheme,
      // themeMode: ThemeMode.system,
      title: 'Todo App',
      home: GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        child: IndexPage(),
      ),
      initialBinding: IndexBinding(),
      debugShowCheckedModeBanner: false,
      enableLog: true,
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      unknownRoute: AppPages.unknownRoute,
      builder: EasyLoading.init(),
      locale: TranslationService.locale,
      fallbackLocale: TranslationService.fallbackLocale,
      translations: TranslationService(),
    );
  }
}
