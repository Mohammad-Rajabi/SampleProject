import 'package:get_storage/get_storage.dart';
import 'package:sample_project/model/user_data_model.dart';

class UserInfo {
  static final UserInfo _instance = UserInfo._internal();

  UserInfo._internal();

  factory UserInfo() => _instance;

  final _box = GetStorage();
  final String _loginInfoKey = "loginMode";
  final String _userInfoKey = "user";

  saveLoginMode(bool isLoginMode) => _box.write(_loginInfoKey, isLoginMode);

  bool getLoginMode() => _box.read(_loginInfoKey) ?? false;

  saveProfile(User user)=> _box.write(_userInfoKey, user);

  User getProfile() => _box.read(_userInfoKey);
}
