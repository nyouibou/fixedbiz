// ignore_for_file: use_key_in_widget_constructors

import 'package:bizhingebase/view/homescreen/mainscreens/firstscreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controller/cartcontroller.dart';
import 'controller/srchcontrlr.dart';

void main() {
  Get.lazyPut<SrchController>(() => SrchController());
  Get.lazyPut<CartController>(() => CartController());

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp();

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'B2B App',
      theme: ThemeData(
        primarySwatch: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: FirstScreen(
        companyName: 'aswinstore',
      ),
    );
  }
}
