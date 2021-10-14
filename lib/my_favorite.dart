import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gettest/my_controller.dart';
import 'package:gettest/my_position.dart';

class MyFavorite extends StatelessWidget {
  MyFavorite({Key? key}) : super(key: key);

  final MyController myController = Get.put(MyController());


  @override
  Widget build(BuildContext context) {
    log('MyFavorite page loading....');
    return Scaffold(
      appBar: AppBar(
        title: const Text(' 즐겨찾기'),
      ),
      body: Column(
        children:<Widget>[
        ElevatedButton(
          child: const Text('재요청'),
          onPressed:() => MyController.to.generateData(),
        ), // ElevatedButton
          FutureBuilder<List<MyPosition>>(
              future: MyController.to.getListMyPosition(),
              builder: (BuildContext context,
                  AsyncSnapshot<List<MyPosition>> snapshot) {
                if (snapshot.hasData) {
                  return Expanded(
                    child: Obx(()=>ListView.builder(
                              itemCount: snapshot.data!.length,
                              itemBuilder: (context, index) => Row(
                                children: [
                                  Text('${snapshot.data![index].name}, ${snapshot.data![index].latitude}'),
                                  // Text('${snapshot.data![index].latitude}'),
                                ],
                              ),
                              ), // ListView.builder
                              ), // Obx
                  );
                } else {
                  return Column(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: <Widget>[
                    const CircularProgressIndicator(),
                const Text('data loading...'),
                ],
                  );
                }
              },
          ), // FutureBuilder
    ],
      ), // Column
    );
  }
}
