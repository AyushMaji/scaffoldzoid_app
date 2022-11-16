part of 'login_bloc.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState.initial() = _Initial;
  const factory LoginState.loading() = _Loading;
  const factory LoginState.success(
      {required String role, required String uid}) = _Success;
  const factory LoginState.failure({required String failure}) = _Failure;
}
