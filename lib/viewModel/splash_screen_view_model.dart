import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:sample_project/model/user_info.dart';
import 'package:sample_project/view/login_page.dart';

class SplashScreenViewModel extends GetxController {
  @override
  void onInit() {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ));

    Timer(const Duration(seconds: 2), _navigateLoginPage);
  }

  _navigateLoginPage() {
    if (UserInfo().getLoginMode()) {
    } else {
      Get.to(() => LoginPage());
    }
  }
}
