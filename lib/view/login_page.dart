import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:sample_project/helper/app_colors.dart';
import 'package:sample_project/viewModel/login_view_model.dart';

class LoginPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.WHITE,
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return Center(
      child: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 32),
        child: Obx(() => Form(
          child: Column(
            children: [
              SvgPicture.asset(
                'assets/images/access_account.svg',
                height: 200,
                width: 200,
              ),
              SizedBox(
                height: 24,
              ),
              _usernameField(),
              SizedBox(
                height: 16,
              ),
              _passwordField(),
              SizedBox(
                height: 16,
              ),
              _loginButton(),
              SizedBox(
                height: 32,
              ),
            ],
          ),
        )),
      ),
    );
  }


  Widget _passwordField() {
    return TextFormField(
      maxLines: 1,
      validator: Get.find<LoginViewModel>().passwordValidate,
      controller: Get.find<LoginViewModel>().passwordController,
      keyboardType: TextInputType.number,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      obscureText: Get.find<LoginViewModel>().isObscure.value,
      style: TextStyle(color: AppColors.DARK_GREY, fontSize: 16),
      decoration: InputDecoration(
          hintText: "password",
          hintStyle: TextStyle(color: AppColors.DARK_GREY, fontSize: 16),
          contentPadding: EdgeInsets.all(8),
          prefixIcon: Icon(Icons.lock_outline, color: AppColors.DARK_GREY),
          suffixIcon: GestureDetector(
            onTap: () {
              Get.find<LoginViewModel>().isObscure.value =
              !Get.find<LoginViewModel>().isObscure.value;
            },
            child: Icon(
                Get.find<LoginViewModel>().isObscure.value
                    ? Icons.visibility_off
                    : Icons.visibility,
                color: AppColors.GREY),
          )),
    );
  }

  Widget _usernameField() {
    return TextFormField(
      maxLines: 1,
      keyboardType: TextInputType.text,
      controller: Get.find<LoginViewModel>().usernameController,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: Get.find<LoginViewModel>().usernameValidate,
      style: TextStyle(color: AppColors.DARK_GREY, fontSize: 16),
      decoration: InputDecoration(
        hintText: "username",
        hintStyle: TextStyle(color: AppColors.DARK_GREY, fontSize: 16),
        contentPadding: EdgeInsets.all(8),
        prefixIcon: Icon(Icons.person_outline_outlined, color: AppColors.DARK_GREY),
      ),
    );
  }

  Widget _loginButton() {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0)),
            primary: AppColors.BLUE),
        onPressed: Get.find<LoginViewModel>().loginButtonClicked,
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 16),
          child: Get.find<LoginViewModel>().isLoading.value ?Container(
            width: 24,
            height: 24,
            child: CircularProgressIndicator(
              backgroundColor: AppColors.BLUE,
              color:AppColors.WHITE,
              strokeWidth: 3,
            ),
          ): Text(
              'log in',
              style: TextStyle(color: AppColors.WHITE, fontSize: 16)),
        ),
      ),
    );
  }

}