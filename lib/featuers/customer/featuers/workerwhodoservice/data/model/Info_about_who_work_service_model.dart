import 'package:freezed_annotation/freezed_annotation.dart';

class InfoWoekerService {
  InfoWoekerService({ required this.imageUrl,this.ofer,this.rate,this.salary,this.serviceName,this.workerName});

  
 final String imageUrl;
  String? rate;
  String? salary;
  String? ofer;
  String? serviceName;
  String? workerName;
}
