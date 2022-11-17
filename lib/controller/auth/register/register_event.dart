part of 'register_bloc.dart';

@freezed
class RegisterEvent with _$RegisterEvent {
  const factory RegisterEvent.started() = _Started;
  const factory RegisterEvent.registerWithEmailAndPasswordPressed(
      {required String email,
      required String password,
      required String role}) = _RegisterWithEmailAndPasswordPressed;
}
