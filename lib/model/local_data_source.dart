import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:sample_project/model/auth_response_model.dart';
import 'package:sample_project/model/user_data_model.dart';

class LocalDataSource {
  LocalDataSource._internal();

  static final LocalDataSource _instance = LocalDataSource._internal();

  factory LocalDataSource() => _instance;

  Future<List<User>> readFromJsonFile() async{
    List<User> users = [];

    await Future.delayed(Duration(seconds: 2), () async {
      final String response =
          await rootBundle.loadString('assets/json/user_profile.json');
      Iterable responseData = json.decode(response);
      for (var json in responseData) {
        User user = User.fromJson(json);
        users.add(user);
      }
    });

    return Future.value(users);
  }

  Future<AuthResponse> authentication(String username) async {
    AuthResponse authResponse = AuthResponse();
    List<User> users = await readFromJsonFile();
    for (var user in users) {
      if (user.name == username) {
        authResponse = AuthResponse(isUser: true, user: user);
        break;
      }
    }
    return Future.value(authResponse);
  }

  Future<List<User>> getUsersLocally() async{
    return readFromJsonFile();
  }
  
  Future<User> getFriendProfile(String guid)async{
    User user;
    List<User> users = await readFromJsonFile();
    user = users.firstWhere((user) =>
      user.guid == guid, orElse: ()=>User(guid: ""
        "",name: "",isOwner:false,gender: "")
    );
    return Future.value(user);
  }
}
