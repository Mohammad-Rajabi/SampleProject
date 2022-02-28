import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:sample_project/model/local_data_source.dart';
import 'package:sample_project/model/user_info.dart';
import 'package:sample_project/view/home_page.dart';

class LoginViewModel extends GetxController {
  RxBool isObscure = true.obs;
  RxBool isLoading = false.obs;
  late GlobalKey<FormState> formKey;
  late TextEditingController usernameController;
  late TextEditingController passwordController = TextEditingController();

  @override
  void onInit() {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
    ));
    formKey = GlobalKey();
    usernameController = TextEditingController();
    passwordController = TextEditingController();
  }

  String? usernameValidate(String? value) {
    if (value!.isEmpty)
      return 'required';
    else
      return null;
  }

  String? passwordValidate(String? value) {
    if (value!.isEmpty) return 'required';
    if (value.length < 8)
      return 'Cannot be less than 8 letters';
    else
      return null;
  }

  void loginButtonClicked() {
    if(formKey.currentState!.validate()){
      isLoading.value = true;
      LocalDataSource().authentication(usernameController.text).then((user) {
        isLoading.value = false;
        UserInfo userInfo = UserInfo();
        userInfo.saveLoginMode(true);
        userInfo.saveProfile(user);
        Get.off(()=>HomePage());
      });
    }
  }

}
