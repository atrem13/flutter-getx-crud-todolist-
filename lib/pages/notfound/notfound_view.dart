import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:openaccess/pages/home/home_view.dart';

class NotfoundPage extends StatelessWidget {
  static const route = '/not-found-page';
  const NotfoundPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Not Found"),
      ),
      body: ListTile(
        title: Text("Home Page"),
        subtitle: Text('Halaman utama'),
        onTap: () => Get.offAllNamed(HomePage.route),
      ),
    );
  }
}
