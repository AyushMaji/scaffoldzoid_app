part of 'register_bloc.dart';

@freezed
class RegisterState with _$RegisterState {
  const factory RegisterState.initial() = _Initial;
  const factory RegisterState.loading() = _Loading;
  const factory RegisterState.success({required String role}) = _Success;
  const factory RegisterState.failure({required String failure}) = _Failure;

}
