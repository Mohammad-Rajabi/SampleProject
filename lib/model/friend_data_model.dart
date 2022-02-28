import 'package:freezed_annotation/freezed_annotation.dart';

part 'friend_data_model.freezed.dart';
part 'friend_data_model.g.dart';

@freezed
class Friend with _$Friend{

  factory Friend({required int id,required String guid,required String name}) = _Friend;

  factory Friend.fromJson(Map<String, dynamic> json) => _$FriendFromJson(json);
}