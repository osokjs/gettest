import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'my_config.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    log('Home page loading....');
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              child: const Text('즐겨찾기'),
              onPressed:() => Get.toNamed('/favorite'),
            ),
            ElevatedButton(
              child: const Text('환경설정'),
              onPressed:() => Get.to(() => const MyConfig()),
            ),
          ],
        ),
      ),
    );
  }
}
