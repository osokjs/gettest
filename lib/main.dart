import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'my_config.dart';
import 'my_favorite.dart';
import 'my_homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'get test',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // initialRoute: '/',
      home: const MyHomePage(),
      getPages: [
        GetPage(name: '/', page: () => const MyHomePage()),
        GetPage(name: '/favorite', page: () => MyFavorite()),
        GetPage(name: '/config', page: () => MyConfig()),
      ],
    );
  }
} // MyApp

