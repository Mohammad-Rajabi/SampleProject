import 'package:get/get.dart';
import 'package:sample_project/viewModel/home_view_model.dart';
import 'package:sample_project/viewModel/login_view_model.dart';
import 'package:sample_project/viewModel/splash_screen_view_model.dart';

class AppBinding extends Bindings{
  @override
  void dependencies() {
    Get.put(SplashScreenViewModel());
    Get.lazyPut(() => LoginViewModel());
    Get.lazyPut(() => HomeViewModel());
  }

}