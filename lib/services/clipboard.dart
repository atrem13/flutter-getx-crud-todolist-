import 'package:flutter/services.dart';
import 'package:openaccess/services/alert.dart';

copyText(text) {
  Clipboard.setData(
    ClipboardData(
      text: "$text",
    ),
  );

  Alert.toast(text: "$text berhasil di copy");
}

readText() async {
  ClipboardData? data = await Clipboard.getData(Clipboard.kTextPlain);

  if (data == null) return "";

  return data.text;
}
