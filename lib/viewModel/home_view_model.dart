import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:sample_project/model/local_data_source.dart';
import 'package:sample_project/model/user_data_model.dart';
import 'package:sample_project/view/profile_page.dart';

class HomeViewModel extends GetxController {
  RxList usersList = <User>[].obs;

  @override
  void onInit() async{
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.blue,
      statusBarIconBrightness: Brightness.light,
    ));

    await LocalDataSource().getUsersLocally().then((List<User> users) {
      _handleUsersResponse(users);
    });
  }

  void _handleUsersResponse(List<User> users) {
    for (var item in users) {
      usersList.add(item);
    }
  }

  void navigateToProfilePage() {
    Get.to(() =>ProfilePage());
  }
}
