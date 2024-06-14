// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_services.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps,no_leading_underscores_for_local_identifiers

class _ApiService implements ApiService {
  _ApiService(
    this._dio, {
    this.baseUrl,
  }) {
    baseUrl ??= 'https://projectbackend-1-74b9.onrender.com/api/';
  }

  final Dio _dio;

  String? baseUrl;

  @override
  Future<LoginResponse> login(LoginRequestBody loginRequestBody) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(loginRequestBody.toJson());
    final _result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<LoginResponse>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              'login',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value = LoginResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<RegisterUserRepo> registerUser({
    required String firstName,
    required String secondName,
    required String email,
    required String password,
    required String userType,
    required String gender,
    required String Phone,
    required String address,
    required File profile,
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = FormData();
    _data.fields.add(MapEntry(
      'firstName',
      firstName,
    ));
    _data.fields.add(MapEntry(
      'secondName',
      secondName,
    ));
    _data.fields.add(MapEntry(
      'email',
      email,
    ));
    _data.fields.add(MapEntry(
      'password',
      password,
    ));
    _data.fields.add(MapEntry(
      'userType',
      userType,
    ));
    _data.fields.add(MapEntry(
      'gender',
      gender,
    ));
    _data.fields.add(MapEntry(
      'Phone',
      Phone,
    ));
    _data.fields.add(MapEntry(
      'address',
      address,
    ));
    _data.files.add(MapEntry(
      'profile',
      MultipartFile.fromFileSync(
        profile.path,
        filename: profile.path.split(Platform.pathSeparator).last,
      ),
    ));
    final _result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<RegisterUserRepo>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
      contentType: 'multipart/form-data',
    )
            .compose(
              _dio.options,
              'register',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value = RegisterUserRepo.fromJson(_result.data!);
    return value;
  }

  @override
  Future<RegisterUserRepo> registerWorker({
    required String firstName,
    required String secondName,
    required String email,
    required String password,
    required String userType,
    required String gender,
    required String Phone,
    required String address,
    required String specialization,
    required File profileImage,
    required File idImage,
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = FormData();
    _data.fields.add(MapEntry(
      'firstName',
      firstName,
    ));
    _data.fields.add(MapEntry(
      'secondName',
      secondName,
    ));
    _data.fields.add(MapEntry(
      'email',
      email,
    ));
    _data.fields.add(MapEntry(
      'password',
      password,
    ));
    _data.fields.add(MapEntry(
      'userType',
      userType,
    ));
    _data.fields.add(MapEntry(
      'gender',
      gender,
    ));
    _data.fields.add(MapEntry(
      'Phone',
      Phone,
    ));
    _data.fields.add(MapEntry(
      'address',
      address,
    ));
    _data.fields.add(MapEntry(
      'specialization',
      specialization,
    ));
    _data.files.add(MapEntry(
      'profileImage',
      MultipartFile.fromFileSync(
        profileImage.path,
        filename: profileImage.path.split(Platform.pathSeparator).last,
      ),
    ));
    _data.files.add(MapEntry(
      'idImage',
      MultipartFile.fromFileSync(
        idImage.path,
        filename: idImage.path.split(Platform.pathSeparator).last,
      ),
    ));
    final _result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<RegisterUserRepo>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
      contentType: 'multipart/form-data',
    )
            .compose(
              _dio.options,
              'worker/registerWorker',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value = RegisterUserRepo.fromJson(_result.data!);
    return value;
  }

  @override
  Future<WorkerGetAllData> getallworker() async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<WorkerGetAllData>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              'worker/getAllWorkers',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value = WorkerGetAllData.fromJson(_result.data!);
    return value;
  }

  @override
  Future<Allordersworkers> getallorder() async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<Allordersworkers>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              'order/getAllOrders',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value = Allordersworkers.fromJson(_result.data!);
    return value;
  }

  @override
  Future<OrderResponse> placeOrder({
    required String workerId,
    required int orderPrice,
    required String address,
    required String paymentMethod,
    required String paymentStatus,
    required String orderStatus,
    required int rating,
    required String feedBack,
    required File orderImages,
    required String description,
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = FormData();
    _data.fields.add(MapEntry(
      'workerId',
      workerId,
    ));
    _data.fields.add(MapEntry(
      'orderPrice',
      orderPrice.toString(),
    ));
    _data.fields.add(MapEntry(
      'address',
      address,
    ));
    _data.fields.add(MapEntry(
      'paymentMethod',
      paymentMethod,
    ));
    _data.fields.add(MapEntry(
      'paymentStatus',
      paymentStatus,
    ));
    _data.fields.add(MapEntry(
      'orderStatus',
      orderStatus,
    ));
    _data.fields.add(MapEntry(
      'rating',
      rating.toString(),
    ));
    _data.fields.add(MapEntry(
      'feedBack',
      feedBack,
    ));
    _data.files.add(MapEntry(
      'orderImages',
      MultipartFile.fromFileSync(
        orderImages.path,
        filename: orderImages.path.split(Platform.pathSeparator).last,
      ),
    ));
    final _result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<OrderResponse>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/order/placeOrder',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value = OrderResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<updateOrderResponse> updateOrderState(
      OrderStatusResponse orderStatusResponse) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(orderStatusResponse.toJson());
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<updateOrderResponse>(Options(
      method: 'PATCH',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              'order/666c3590062b6a47b26426a3',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value = updateOrderResponse.fromJson(_result.data!);
    return value;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }

  String _combineBaseUrls(
    String dioBaseUrl,
    String? baseUrl,
  ) {
    if (baseUrl == null || baseUrl.trim().isEmpty) {
      return dioBaseUrl;
    }

    final url = Uri.parse(baseUrl);

    if (url.isAbsolute) {
      return url.toString();
    }

    return Uri.parse(dioBaseUrl).resolveUri(url).toString();
  }
}
