import 'package:flutter/cupertino.dart';
import 'package:overlay_support/overlay_support.dart';

class InternetConnectivitySnakBar {
  static void showSnakBar(
    BuildContext context,
    String text,
    Color color,
  ) {
    showSimpleNotification(
      Text('Internet Connectivity'),
      subtitle: Text(text),
      background: color,
      duration: Duration(seconds: 10),
    );
  }
}
