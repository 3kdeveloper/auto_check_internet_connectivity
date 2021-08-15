import 'dart:async';

import 'package:connectivity/connectivity.dart';
import 'package:flutter/material.dart';

import 'InternetConnectivitySnakBar.dart';

class ConnectivityPage extends StatefulWidget {
  @override
  _ConnectivityPageState createState() => _ConnectivityPageState();
}

class _ConnectivityPageState extends State<ConnectivityPage> {
  StreamSubscription subscription;

  @override
  void initState() {
    super.initState();
    subscription =
        Connectivity().onConnectivityChanged.listen(checkConnectivity);
  }

  @override
  void dispose() {
    subscription.cancel();
    super.dispose();
  }

  void checkConnectivity(ConnectivityResult result) {
    final hasInternet = result != ConnectivityResult.none;
    final text = hasInternet
        ? 'Back Online ${result.toString()}'
        : 'You have no Internet';

    final color = hasInternet ? Colors.green : Colors.red;

    InternetConnectivitySnakBar.showSnakBar(context, text, color);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Internet Conectivity'),
      ),
    );
  }
}
