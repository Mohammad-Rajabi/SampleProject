import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:sample_project/helper/app_colors.dart';
import 'package:sample_project/viewModel/splash_screen_view_model.dart';


class SplashScreenPage extends StatelessWidget{

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor:AppColors.WHITE,
      body: Center(
        child: SvgPicture.asset(
          'assets/images/social_networking.svg',
          height: 200,
          width: 200,
        ),
      ),
    );
  }

}