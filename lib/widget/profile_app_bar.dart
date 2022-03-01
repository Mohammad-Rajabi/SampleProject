import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sample_project/helper/app_colors.dart';

class ShowingUserInfoAppBar extends StatelessWidget with PreferredSizeWidget{
  String username;
  String? profileImageUrl;
  void Function()? callback;

  ShowingUserInfoAppBar({this.profileImageUrl,required this.username,this.callback});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Material(
        elevation: 4,
        child: Container(
          color: AppColors.BLUE,
          height: 56,
          child: Row(
            children: [InkWell(
              onTap: callback ?? null,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: CachedNetworkImage(
                  imageUrl: profileImageUrl ?? "",
                  fit: BoxFit.cover,
                  placeholder: (_, String) {
                    return CircleAvatar(
                      radius: 24,
                      backgroundColor: AppColors.DARK_GREY,
                    );
                  },
                  errorWidget: (context, url, error) => SvgPicture.asset(
                    'assets/images/user.svg',
                    height: 42,
                    width: 42,
                  ),
                  imageBuilder: (context, imageProvider) => CircleAvatar(
                    radius: 42,
                    backgroundImage: imageProvider,
                  ),
                ),
              ),
            ),Text(username,style: TextStyle(color: AppColors.WHITE,fontSize: 16),)],
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(56);
}
