import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:sample_project/helper/app_colors.dart';
import 'package:sample_project/viewModel/login_view_model.dart';

class LoginPage extends StatelessWidget {
  final LoginViewModel _loginViewModel = Get.find<LoginViewModel>();

  @override
  Widget build(BuildContext context) {
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
              key: _loginViewModel.formKey,
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
      validator: _loginViewModel.passwordValidate,
      controller: _loginViewModel.passwordController,
      keyboardType: TextInputType.number,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      obscureText: _loginViewModel.isObscure.value,
      style: TextStyle(color: AppColors.DARK_GREY, fontSize: 16),
      decoration: InputDecoration(
          hintText: "password",
          hintStyle: TextStyle(color: AppColors.DARK_GREY, fontSize: 16),
          contentPadding: EdgeInsets.all(8),
          prefixIcon: Icon(Icons.lock_outline, color: AppColors.DARK_GREY),
          suffixIcon: GestureDetector(
            onTap: () {
              _loginViewModel.isObscure.value =
                  !_loginViewModel.isObscure.value;
            },
            child: Icon(
                _loginViewModel.isObscure.value
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
      controller: _loginViewModel.usernameController,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: _loginViewModel.usernameValidate,
      style: TextStyle(color: AppColors.DARK_GREY, fontSize: 16),
      decoration: InputDecoration(
        hintText: "username",
        hintStyle: TextStyle(color: AppColors.DARK_GREY, fontSize: 16),
        contentPadding: EdgeInsets.all(8),
        prefixIcon:
            Icon(Icons.person_outline_outlined, color: AppColors.DARK_GREY),
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
        onPressed: _loginViewModel.loginButtonClicked,
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 16),
          child: _loginViewModel.isLoading.value
              ? Container(
                  width: 24,
                  height: 24,
                  child: CircularProgressIndicator(
                    backgroundColor: AppColors.BLUE,
                    color: AppColors.WHITE,
                    strokeWidth: 3,
                  ),
                )
              : Text('log in',
                  style: TextStyle(color: AppColors.WHITE, fontSize: 16)),
        ),
      ),
    );
  }
}
