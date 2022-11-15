part of 'user_details_bloc.dart';

@freezed
class UserDetailsState with _$UserDetailsState {
  const factory UserDetailsState.initial() = _Initial;
  const factory UserDetailsState.loading() = _Loading;
  const factory UserDetailsState.success() = _Success;
  const factory UserDetailsState.failure({required String error}) = _Failure;
}
