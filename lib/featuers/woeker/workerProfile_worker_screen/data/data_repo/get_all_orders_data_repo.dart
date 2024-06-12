

import 'package:homehand/core/networking/api_error_handeler.dart';
import 'package:homehand/core/networking/api_result.dart';
import 'package:homehand/core/networking/api_services.dart';
import 'package:homehand/featuers/Auth/featuers/login/data/model/login_repo_boody.dart';
import 'package:homehand/featuers/woeker/workerProfile_worker_screen/data/model/get_all_orders_to_workers.dart';

class getallordersrepo {
  final ApiService _apiService;

 getallordersrepo (this._apiService);

  Future<ApiResult<Allordersworkers>> getallorders() async {
    try {
      final response = await _apiService.getallorder();
      return ApiResult.success(response);
    } catch (errro) {
      return ApiResult.failure(ErrorHandler.handle(errro));
    }
  }
}
