import 'package:flutter/material.dart';
import 'package:get/get.dart';

void showSnack(
    {required String title, required String message, required Widget icon}) {
  Get.snackbar(title, message,
      backgroundColor: Colors.grey,
      snackPosition: SnackPosition.BOTTOM,
      icon: icon,
      margin: EdgeInsets.all(16));
}