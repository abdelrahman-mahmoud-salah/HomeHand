import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:homehand/featuers/Auth/featuers/login/data/model/login_repo_boody.dart';

part 'login_state.freezed.dart';

@freezed
class LoginState<T> with _$LoginState<T> {
  const factory LoginState.initial() = _Initial;

  const factory LoginState.loading() = Loading;
  const factory LoginState.success(LoginResponse data) = Success;
  const factory LoginState.error({required String error}) = Error;
}
