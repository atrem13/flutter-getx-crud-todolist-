import 'package:flutter/material.dart';
import 'package:openaccess/common/colors/colors.dart';
import 'package:openaccess/common/values/values.dart';
import 'package:get/get.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: Container(
              padding: EdgeInsets.all(PADDING_BODY),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Image.asset(
                      'assets/logo.png',
                      width: 76,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "APP_NAME".tr,
                      style: Theme.of(context)
                          .textTheme
                          .headline5!
                          .copyWith(color: AppColors.primaryColor),
                    )
                  ],
                ),
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Center(
                child: Container(
                  width: 46,
                  height: 46,
                  child: CircularProgressIndicator(
                    color: AppColors.primaryColor,
                  ),
                ),
              ),
              SizedBox(
                height: PADDING_BODY,
              ),
            ],
          )
        ],
      ),
    );
  }
}
