import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:sample_project/helper/app_colors.dart';
import 'package:sample_project/model/user_info.dart';
import 'package:sample_project/viewModel/home_view_model.dart';
import 'package:sample_project/widget/profile_app_bar.dart';
import 'package:sample_project/widget/shimmer_widget.dart';

class HomePage extends StatelessWidget {
  final HomeViewModel _homeViewModel = Get.find<HomeViewModel>();

  @override
  Widget build(BuildContext context) {
    UserInfo userInfo = UserInfo();

    return Scaffold(
      backgroundColor: AppColors.GREY,
      appBar: ShowingUserInfoAppBar(
        profileImageUrl: userInfo.getUser().picture,
        username: userInfo.getUser().name,
        callback: _homeViewModel.navigateToProfilePage,
      ),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return Obx(
      () => _homeViewModel.usersList.length == 0
          ? ListView.builder(
              padding: EdgeInsets.all(16),
              itemCount: 8,
              itemBuilder: (_, index) {
                return _buildUsersShimmer();
              })
          : ListView.builder(
              clipBehavior: Clip.none,
              physics: BouncingScrollPhysics(),
              padding: EdgeInsets.all(16),
              itemCount: _homeViewModel.usersList.length,
              itemBuilder: (_, index) {
                return _buildUsersListItem(index);
              }),
    );
  }

  Widget _buildUsersListItem(int index) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      elevation: 2,
      color: AppColors.WHITE,
      child: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CachedNetworkImage(
                  imageUrl: _homeViewModel.usersList[index].picture ?? "",
                  fit: BoxFit.cover,
                  placeholder: (_, String) {
                    return CircleAvatar(
                      radius: 64,
                      backgroundColor: AppColors.GREY,
                    );
                  },
                  errorWidget: (context, url, error) => SvgPicture.asset(
                    'assets/images/user.svg',
                    height: 64,
                    width: 64,
                  ),
                  imageBuilder: (context, imageProvider) => CircleAvatar(
                    radius: 64,
                    backgroundImage: imageProvider,
                  ),
                ),
                SizedBox(
                  width: 16,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      _homeViewModel.usersList[index].name,
                      style: TextStyle(color: AppColors.BLACK, fontSize: 16),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      _homeViewModel.usersList[index].email,
                      style: TextStyle(color: AppColors.BLACK, fontSize: 16),
                    ),
                  ],
                )
              ],
            ),
            SizedBox(
              height: 16,
            ),
            RichText(
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                text: TextSpan(
                    text: "Address: ",
                    style: TextStyle(color: AppColors.BLACK, fontSize: 16),
                    children: [
                      TextSpan(
                        text: _homeViewModel.usersList[index].address,
                        style:
                            TextStyle(color: AppColors.DARK_GREY, fontSize: 14),
                      )
                    ]))
          ],
        ),
      ),
    );
  }

  Widget _buildUsersShimmer() {
    return Card(
      elevation: 2,
      color: AppColors.WHITE,
      child: Container(
        decoration:
            BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(16))),
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                ShimmerWidget.circular(width: 64, height: 64),
                SizedBox(
                  width: 16,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ShimmerWidget.rectangular(width: 60, height: 16),
                    SizedBox(
                      height: 8,
                    ),
                    ShimmerWidget.rectangular(width: 120, height: 16),
                  ],
                )
              ],
            ),
            SizedBox(
              height: 16,
            ),
            ShimmerWidget.rectangular(height: 16),
          ],
        ),
      ),
    );
  }
}
