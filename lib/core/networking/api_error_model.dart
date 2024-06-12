import 'package:json_annotation/json_annotation.dart';
part 'api_error_model.g.dart';

@JsonSerializable()
class ApiErrorModel {
  factory ApiErrorModel.fromJson(Map<String, dynamic> json) =>
      _$ApiErrorModelFromJson(json);

  ApiErrorModel({
    required this.message,
  });
  final String? message;

  Map<String, dynamic> toJson() => _$ApiErrorModelToJson(this);
}
