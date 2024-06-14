// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_repo_boody.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginResponse _$LoginResponseFromJson(Map<String, dynamic> json) =>
    LoginResponse(
      status: json['status'] as String?,
      message: json['message'] as String?,
      token: json['token'] as String?,
      id: json['_id'] as String?,
      firstName: json['firstName'] as String?,
      secondName: json['secondName'] as String?,
      address:
          (json['address'] as List<dynamic>?)?.map((e) => e as String).toList(),
      gender: json['gender'] as String?,
      userType: json['userType'] as String?,
      profile: json['profile'] as String?,
    );

Map<String, dynamic> _$LoginResponseToJson(LoginResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'token': instance.token,
      '_id': instance.id,
      'firstName': instance.firstName,
      'secondName': instance.secondName,
      'address': instance.address,
      'gender': instance.gender,
      'userType': instance.userType,
      'profile': instance.profile,
    };
