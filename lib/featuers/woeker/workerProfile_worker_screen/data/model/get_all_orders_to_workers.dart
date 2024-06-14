import 'package:json_annotation/json_annotation.dart';

part 'get_all_orders_to_workers.g.dart';

@JsonSerializable()
class Allordersworkers {
  Allordersworkers(this.workerList);
  factory Allordersworkers.fromJson(Map<String, dynamic> json) =>
      _$AllordersworkersFromJson(json);

  @JsonKey(name: 'data')
  final List<Order> workerList;
}

@JsonSerializable()
class Order {
  @JsonKey(name: '_id')
  final String id;

  final User? userId;
  final Worker? workerId;
  final double? orderPrice;
  final String? description;
  final String? address;
  final String? paymentMethod;
  final String? paymentStatus;
  final String? orderStatus;
  final int? rating;
  final String? feedBack;
  final List<String>? orderImages;

  Order({
    required this.id,
    required this.userId,
    required this.workerId,
    required this.orderPrice,
    required this.description,
    required this.address,
    required this.paymentMethod,
    required this.paymentStatus,
    required this.orderStatus,
    required this.rating,
    required this.feedBack,
    required this.orderImages,
  });

  factory Order.fromJson(Map<String, dynamic> json) => _$OrderFromJson(json);

  Map<String, dynamic> toJson() => _$OrderToJson(this);
}

@JsonSerializable()
class User {
  @JsonKey(name: '_id')
  final String? id;
  final String? firstName;
  final String? secondName;
  final String? email;
  final String? profile;
  User({
    required this.id,
    required this.firstName,
    required this.secondName,
    required this.email,
    required this.profile,

  });

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);
}

@JsonSerializable()
class Worker {
  @JsonKey(name: '_id')
  final String? id;
  final WorkerDetails? worker;
  final int? rating;
  final String? profileImage;

  Worker({
    required this.id,
    required this.worker,
    required this.rating,
    required this.profileImage,
  });

  factory Worker.fromJson(Map<String, dynamic> json) => _$WorkerFromJson(json);

  Map<String, dynamic> toJson() => _$WorkerToJson(this);
}
@JsonSerializable()
class WorkerDetails {
  @JsonKey(name: '_id')
  final String? id;
  final String? firstName;
  final String? secondName;
  final String? email;


  WorkerDetails({
    required this.id,
    required this.firstName,
    required this.secondName,
    required this.email,
  });

  factory WorkerDetails.fromJson(Map<String, dynamic> json) => _$WorkerDetailsFromJson(json);

  Map<String, dynamic> toJson() => _$WorkerDetailsToJson(this);
}