

import 'package:homehand/core/networking/api_error_handeler.dart';
import 'package:homehand/core/networking/api_result.dart';
import 'package:homehand/core/networking/api_services.dart';
import 'package:homehand/featuers/Auth/featuers/login/data/model/login_repo_boody.dart';
import 'package:homehand/featuers/woeker/workerProfile_worker_screen/data/model/get_all_orders_to_workers.dart';
import 'package:homehand/featuers/woeker/workerProfile_worker_screen/data/model/update_order_repo.dart';
import 'package:homehand/featuers/woeker/workerProfile_worker_screen/data/model/update_order_request.dart';

class stateordersrepo {
  final ApiService _apiService;

  stateordersrepo (this._apiService);
  Future<ApiResult<updateOrderResponse>> updateOrderState(OrderStatusResponse orderStatusResponse) async {
    try {
      final response = await _apiService.updateOrderState(orderStatusResponse);
      return ApiResult.success(response);
    } catch (errro) {
      return ApiResult.failure(ErrorHandler.handle(errro));
    }
  }
}
