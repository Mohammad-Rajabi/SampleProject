import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:sample_project/model/user_data_model.dart';

class LocalDataSource {

  LocalDataSource._internal();

  static final LocalDataSource _instance = LocalDataSource._internal();

  factory LocalDataSource()=>_instance;

  var responseData;

  Future<List<User>> readFromJsonFile() async {
    if (responseData == null) {
      final String response =
          await rootBundle.loadString('assets/json/user_profile.json');
      responseData = await json.decode(response) as List<dynamic>;
    }

    return responseData.map((json) => User.fromJson(json)).toList();
  }

  Future<User> authentication(String username) async{
    User? result;
    await readFromJsonFile().then((List<User> users) {
          users.forEach((user) {
            if (user.name == username) {
              result = user;
            }
          });
        });
    return Future.value(result);
  }

  Future<List<User>> getUsers(){
    return readFromJsonFile();
  }

}
