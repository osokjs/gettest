import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyFavorite extends StatelessWidget {
  const MyFavorite({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    log('MyFavorite page loading....');
    return Scaffold(
      appBar: AppBar(
        title: const Text('Favorite page'),
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
