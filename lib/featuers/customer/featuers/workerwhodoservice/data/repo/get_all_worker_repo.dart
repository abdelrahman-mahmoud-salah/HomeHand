import '../../../../../../core/networking/api_error_handeler.dart';
import '../../../../../../core/networking/api_result.dart';
import '../../../../../../core/networking/api_services.dart';
import '../model/Info_about_who_work_service_model.dart';

class allworkRepo {
  const allworkRepo(this._dataSource);

  final ApiService _dataSource;

  // Get All Categories Admin
  Future<ApiResult<WorkerGetAllData>> getAllworker() async {
    try {
      final response = await _dataSource.getallworker();
      return ApiResult.success(response);
    } catch (e) {
      return  ApiResult.failure(ErrorHandler.handle(e));
    }
    
  }
}
