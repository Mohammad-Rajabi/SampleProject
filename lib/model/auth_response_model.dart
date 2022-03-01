import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sample_project/model/user_data_model.dart';

part 'auth_response_model.freezed.dart';

@freezed
class AuthResponse with _$AuthResponse{

  factory AuthResponse({@Default(false) bool isUser,User? user}) = _AuthResponse;
}