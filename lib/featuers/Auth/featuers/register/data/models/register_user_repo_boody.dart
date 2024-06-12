import 'package:json_annotation/json_annotation.dart';
part 'register_user_repo_boody.g.dart';

@JsonSerializable()
class RegisterUserRepo {
  RegisterUserRepo({this.status, this.message});
  factory RegisterUserRepo.fromJson(Map<String, dynamic> json) =>
      _$RegisterUserRepoFromJson(json);
  final String? status;
  final String? message;
}
