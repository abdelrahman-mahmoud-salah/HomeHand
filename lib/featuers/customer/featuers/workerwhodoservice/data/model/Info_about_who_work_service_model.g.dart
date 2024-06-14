// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Info_about_who_work_service_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WorkerGetAllData _$WorkerGetAllDataFromJson(Map<String, dynamic> json) =>
    WorkerGetAllData(
      (json['data'] as List<dynamic>)
          .map((e) => GetAllWorkerinfoModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$WorkerGetAllDataToJson(WorkerGetAllData instance) =>
    <String, dynamic>{
      'data': instance.workerList,
    };

GetAllWorkerinfoModel _$GetAllWorkerinfoModelFromJson(
        Map<String, dynamic> json) =>
    GetAllWorkerinfoModel(
      id: json['id'] as String?,
      Id_Image: json['Id_Image'] as String?,
      profileImage: json['profileImage'] as String?,
      rating: (json['rating'] as num?)?.toInt(),
      description: json['description'] as String?,
      reviews_numbers: (json['reviews_numbers'] as num?)?.toInt(),
      experience: (json['experience'] as num?)?.toInt(),
      serviceName: json['serviceName'] as String?,
      worker: json['worker'] == null
          ? null
          : Workersinfo.fromJson(json['worker'] as Map<String, dynamic>),
      specialization: json['specialization'] as String?,
    );

Map<String, dynamic> _$GetAllWorkerinfoModelToJson(
        GetAllWorkerinfoModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'Id_Image': instance.Id_Image,
      'profileImage': instance.profileImage,
      'rating': instance.rating,
      'description': instance.description,
      'reviews_numbers': instance.reviews_numbers,
      'experience': instance.experience,
      'serviceName': instance.serviceName,
      'worker': instance.worker,
      'specialization': instance.specialization,
    };

Workersinfo _$WorkersinfoFromJson(Map<String, dynamic> json) => Workersinfo(
      id: json['_id'] as String?,
      firstName: json['firstName'] as String?,
      secondName: json['secondName'] as String?,
      email: json['email'] as String?,
    );

Map<String, dynamic> _$WorkersinfoToJson(Workersinfo instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'firstName': instance.firstName,
      'secondName': instance.secondName,
      'email': instance.email,
    };
