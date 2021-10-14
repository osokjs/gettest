import 'dart:async';
import 'dart:developer';

import 'package:get/get.dart';

import 'my_position.dart';

class MyController extends GetxController {
  static MyController get to => Get.find();
  var list = <MyPosition>[].obs;
  int _count = 0;
  Timer? _timer;

@override
void onInit() {
  log('onInit start');
 super.onInit();
}

  @override
  void onClose() {
  _timer?.cancel();
    super.onClose();
  }

Future<List<MyPosition>> getListMyPosition()  async {
  list.add(await callData()
          );
  return list;
}

 Future<MyPosition> callData() async {
   _count++;
   MyPosition pos = MyPosition(
     name: '장소 $_count',
     latitude: 30.0 + _count,
     longitude: 120.0 + _count,
     accuracy: 10 + _count,
   );
   await Future.delayed(const Duration(seconds: 5,), () {
     log('callData: $_count');
  });
   return pos;
}

  void generateData() {
    _timer = Timer.periodic(const Duration(seconds: 10), (timer)  {
      Future.delayed(const Duration(seconds: 5,), () {
        getListMyPosition      ();
      });
    });
  }

} // class

