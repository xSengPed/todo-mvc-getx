import 'dart:developer';

import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  RxInt count = 0.obs;
  RxString str = "hello".obs;

  void increment() async {
    count++;
  }

  void decrement() {
    count--;
  }

  @override
  void onInit() {
    log("Init Controller");
    super.onInit();
  }

  @override
  void onClose() {
    log("Close Controller");
    super.onClose();
  }
}
