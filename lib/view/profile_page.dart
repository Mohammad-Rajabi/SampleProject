import 'package:flutter/material.dart';
import 'package:sample_project/model/user_info.dart';
import 'package:sample_project/widget/profile_app_bar.dart';

class ProfilePage extends StatelessWidget {
  UserInfo userInfo = UserInfo();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ProfileAppBar(
        profileImageUrl: userInfo.getUser().picture,
        username: userInfo.getUser().name,
      ),
    );
  }
}
