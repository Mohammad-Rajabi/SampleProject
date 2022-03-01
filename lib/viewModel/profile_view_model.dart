import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sample_project/model/local_data_source.dart';
import 'package:sample_project/model/user_data_model.dart';
import 'package:sample_project/model/user_info.dart';
import 'package:sample_project/view/profile_page.dart';
import 'package:sample_project/widget/snack_bar.dart';

class ProfileViewModel extends GetxController {
  late User user;

  @override
  void onInit() async {
  }

  void showFriendProfile({required String guid}) async {
    await LocalDataSource().getFriendProfile(guid).then((user) {
      if (user.guid.isEmpty) {
        showSnack(
            title: "Oops!",
            message: "No user found",
            icon: Icon(
              Icons.error_outline,
              color: Colors.red,
            ));
      } else {
        Get.to(() => ProfilePage(),
            arguments: {"user": user}, preventDuplicates: false);
      }
    });
  }
}
