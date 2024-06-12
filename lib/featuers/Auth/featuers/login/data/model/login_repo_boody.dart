import 'package:json_annotation/json_annotation.dart';

part 'login_repo_boody.g.dart';

@JsonSerializable()
class LoginResponse {
  LoginResponse({
    required this.status,
    required this.message,
    required this.token,
    required this.id,
    required this.firstName,
    required this.secondName,
    required this.address,
    required this.gender,
    required this.userType,
    // required this.profile,
  });
  String? status;
  String? message;
  String? token;
  @JsonKey(name: '_id')
  String? id;
  String? firstName;
  String? secondName;
  List<String>? address;
  String? gender;
  String? userType;
  // String? profile = '';

  factory LoginResponse.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseFromJson(json);
}
