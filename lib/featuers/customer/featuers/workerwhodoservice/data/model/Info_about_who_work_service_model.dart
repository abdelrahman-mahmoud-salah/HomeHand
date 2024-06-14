import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
part 'Info_about_who_work_service_model.g.dart';

@JsonSerializable()
class WorkerGetAllData {
  WorkerGetAllData(this.workerList);
  factory WorkerGetAllData.fromJson(Map<String, dynamic> json) =>
      _$WorkerGetAllDataFromJson(json);

  @JsonKey(name: 'data')
  final List<GetAllWorkerinfoModel> workerList;
}

@JsonSerializable()
class GetAllWorkerinfoModel {

  final String? id;
  final String? Id_Image;
  final String? profileImage;
  final int? rating;
  final String? description;
  final int? reviews_numbers;
  final int? experience;
  final String? serviceName;
  final Workersinfo? worker;
  final String? specialization;

  GetAllWorkerinfoModel({
    required this.id,
    required this.Id_Image,
    required this.profileImage,
    required this.rating,
    required this.description,
    required this.reviews_numbers,
    required this.experience,
    required this.serviceName,
    required this.worker,
    required this.specialization,
  });

  factory GetAllWorkerinfoModel.fromJson(Map<String, dynamic> json) =>
      _$GetAllWorkerinfoModelFromJson(json);
}

@JsonSerializable()
class Workersinfo {
  @JsonKey(name: '_id')
  final String? id;
  final String? firstName;
  final String? secondName;
  final String? email;


  Workersinfo({
    required this.id,
    required this.firstName,
    required this.secondName,
    required this.email,
  });

  factory Workersinfo.fromJson(Map<String, dynamic> json) => _$WorkersinfoFromJson(json);

  Map<String, dynamic> toJson() => _$WorkersinfoToJson(this);
}
