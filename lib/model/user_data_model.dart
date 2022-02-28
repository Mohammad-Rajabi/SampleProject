import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sample_project/model/friend_data_model.dart';

part 'user_data_model.freezed.dart';
part 'user_data_model.g.dart';

@freezed
class User with _$User{

  factory User({
    required String name,
    required String guid,
    required bool isOwner,
    required String gender,
    String? balance,
    String? picture,
    int? age,
    String? email,
    String? phone,
    String? address,
    String? company,
    String? about,
    String? greeting,
    String? favoriteFruit,
    String? registered,
    double? latitude,
    double? longitude,
    @Default([]) List<String> tags,
    @Default([]) List<Friend> friends,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) =>
      _$UserFromJson(json);


}