import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:openaccess/common/colors/colors.dart';
import 'package:openaccess/config.dart';

class Global {
  static bool isOfflineLogin = false;
  // static bool isDarkMode =
  // SchedulerBinding.instance!.window.platformBrightness == Brightness.dark;
  // static bool get isRelease => bool.fromEnvironment("dart.vm.product");

  // init
  static Future init() async {
    WidgetsFlutterBinding.ensureInitialized();

    if (Platform.isAndroid) {
      SystemUiOverlayStyle systemUiOverlayStyle = SystemUiOverlayStyle(
          statusBarColor: AppColors.primaryMaterialColor.shade800);
      SystemChrome.setSystemUIOverlayStyle(systemUiOverlayStyle);
    }

    Config();
  }
}
