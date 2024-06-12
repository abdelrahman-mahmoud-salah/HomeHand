import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_state.freezed.dart';

@freezed
class RegisterState<T> with _$RegisterState<T> {
  const factory RegisterState.initial() = _Initial;

  const factory RegisterState.loading() = LoadingRegister;
  const factory RegisterState.uploadimage() = UploadImage;
  const factory RegisterState.success() = SuccessRegister;
  const factory RegisterState.error({required String error}) = ErrorRegister;
}
