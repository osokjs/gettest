import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyConfig extends StatelessWidget {
  const MyConfig({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    log('MyConfig page loading.');
    return Scaffold(
      appBar: AppBar(
        title: const Text('Config page'),
      ),
      body: Center(
        child:ElevatedButton(
          child: const Text('뒤로 가기'),
          onPressed:() => Get.back(),
        ),
      ),
    );
  }
}
