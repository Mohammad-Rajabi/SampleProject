import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sample_project/helper/app_colors.dart';
import 'package:sample_project/model/user_data_model.dart';
import 'package:sample_project/model/user_info.dart';
import 'package:sample_project/viewModel/profile_view_model.dart';
import 'package:sample_project/widget/profile_app_bar.dart';

class ProfilePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ProfilePageState();
  }
}

class ProfilePageState extends State<ProfilePage> {

  final ProfileViewModel _profileViewModel = Get.put(ProfileViewModel());


  @override
  void initState() {
    _profileViewModel.user = Get.arguments?["user"] ?? UserInfo().getUser();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.GREY,
        appBar: ShowingUserInfoAppBar(
          profileImageUrl: _profileViewModel.user.picture,
          username: _profileViewModel.user.name,
        ),
        body: _buildBody());
  }

  Widget _buildBody() {
    return Container(
      padding: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildUserProfileInfo(),
          Spacer(),
          _buildUserFriendsWidget(),
          SizedBox(
            height: 24,
          ),
          _buildGreetingWidget(),
          Spacer(),
        ],
      ),
    );
  }

  Widget _buildUserProfileInfo() {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      color: AppColors.WHITE,
      elevation: 2,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 16, horizontal: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                RichText(
                    text: TextSpan(
                        text: "Balance: ",
                        style: TextStyle(
                            color: AppColors.BLACK,
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                        children: [
                      TextSpan(
                        text: _profileViewModel.user.balance,
                        style:
                            TextStyle(color: AppColors.DARK_GREY, fontSize: 14),
                      )
                    ])),
              ],
            ),
            SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RichText(
                    text: TextSpan(
                        text: "Age: ",
                        style: TextStyle(
                            color: AppColors.BLACK,
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                        children: [
                      TextSpan(
                        text: _profileViewModel.user.age.toString(),
                        style:
                            TextStyle(color: AppColors.DARK_GREY, fontSize: 14),
                      )
                    ])),
                RichText(
                    text: TextSpan(
                        text: "Registered: ",
                        style: TextStyle(
                            color: AppColors.BLACK,
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                        children: [
                      TextSpan(
                        text: _profileViewModel.user.registered,
                        style:
                            TextStyle(color: AppColors.DARK_GREY, fontSize: 14),
                      )
                    ])),
              ],
            ),
            SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Flexible(
                  child: RichText(
                    maxLines: 5,
                    overflow: TextOverflow.ellipsis,
                    text: TextSpan(
                        text: "About: ",
                        style: TextStyle(
                            color: AppColors.BLACK,
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                        children: [
                          TextSpan(
                            text: _profileViewModel.user.about.toString(),
                            style: TextStyle(
                                color: AppColors.DARK_GREY, fontSize: 14),
                          )
                        ]),
                  ),
                ),
                SizedBox(
                  width: 16,
                ),
                Visibility(
                  visible: _profileViewModel.user.isOwner,
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'Edit',
                    ),
                    style: TextButton.styleFrom(
                        primary: AppColors.WHITE,
                        backgroundColor: AppColors.BLUE,
                        textStyle: const TextStyle(fontSize: 16)),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildUserFriendsWidget() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Friends: ",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
        ),
        SizedBox(
          height: 16,
        ),
        Wrap(
          spacing: 12,
          children: List.generate(
              _profileViewModel.user.friends.length,
              (index) => InkWell(
                    onTap: () {
                      _profileViewModel.showFriendProfile(
                          guid: _profileViewModel.user.friends[index].guid);
                    },
                    child: Chip(
                        elevation: 2,
                        padding: EdgeInsets.all(12),
                        backgroundColor: AppColors.BLUE,
                        label: Text(
                          _profileViewModel.user.friends[index].name,
                          style: TextStyle(
                            color: AppColors.WHITE,
                          ),
                        )),
                  )),
        )
      ],
    );
  }

  Widget _buildGreetingWidget() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Greeting: ",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
        ),
        SizedBox(
          height: 16,
        ),
        Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          color: AppColors.GREY,
          elevation: 2,
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 16, horizontal: 12),
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: 200,
                minWidth: double.infinity,
                maxWidth: double.infinity,
              ),
              child: Text(
                _profileViewModel.user.greeting.toString(),
                maxLines: 5,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
        )
      ],
    );
  }
}
