import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:sample_project/model/auth_response_model.dart';
import 'package:sample_project/model/local_data_source.dart';
import 'package:sample_project/model/user_info.dart';
import 'package:sample_project/view/home_page.dart';
import 'package:sample_project/widget/snack_bar.dart';

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

  Future<void> loginButtonClicked() async {
    if(formKey.currentState!.validate()){
      isLoading.value = true;

      AuthResponse response = await LocalDataSource().authentication(usernameController.text);
      if(response.isUser){
        UserInfo().saveLoginMode(isLoginMode: true);
        UserInfo().saveUser(user:response.user!);
        Get.off(()=>HomePage());
      }else{
        showSnack(title:"Authentication",message: "User doesn't exist",icon:Icon(Icons.error_outline,color: Colors.red,));
      }
      isLoading.value = false;
    }
  }

}
