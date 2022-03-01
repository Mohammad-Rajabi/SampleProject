import 'package:get_storage/get_storage.dart';
import 'package:sample_project/model/user_data_model.dart';

class UserInfo {
  static final UserInfo _instance = UserInfo._internal();

  UserInfo._internal();

  factory UserInfo() => _instance;

  final _box = GetStorage();
  final String _loginModeKey = "loginMode";
  final String _userInfoKey = "user";

  saveLoginMode({required bool isLoginMode}) => _box.write(_loginModeKey, isLoginMode);

  bool getLoginMode() => _box.read(_loginModeKey)??false;

  saveUser({required User user})=> _box.write(_userInfoKey, user);

  User getUser() => _box.read(_userInfoKey);
}
