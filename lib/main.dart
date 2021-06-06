import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'views/pages/home/home.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Hero app',
      theme: ThemeData(
        primarySwatch: Colors.green,
        backgroundColor: Colors.black
      ),
      home: MyHomePage(),
    );
  }
}

