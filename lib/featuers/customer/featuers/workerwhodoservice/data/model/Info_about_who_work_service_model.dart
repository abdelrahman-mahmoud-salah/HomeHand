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
  GetAllWorkerinfoModel(
      {this.profileImage, this.Id_Image, this.serviceName, this.worker});

  factory GetAllWorkerinfoModel.fromJson(Map<String, dynamic> json) =>
      _$GetAllWorkerinfoModelFromJson(json);
  String? Id_Image;
  String? profileImage;
  int? rating;

  String? description;
  int? reviews_numbers;
  int? experience;
  String? serviceName;
  Workersinfo? worker;
  String? specialization;
}

@JsonSerializable()
class Workersinfo {
  Workersinfo({this.id, this.firstName});
  factory Workersinfo.fromJson(Map<String, dynamic> json) =>
      _$WorkersinfoFromJson(json);
  @JsonKey(name: '_id')
  String? id;
  String? firstName;
}
