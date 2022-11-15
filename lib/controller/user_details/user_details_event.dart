part of 'user_details_bloc.dart';

@freezed
class UserDetailsEvent with _$UserDetailsEvent {
  const factory UserDetailsEvent.started() = _Started;
  const factory UserDetailsEvent.updateUserDetails(
      {required String name,
      required String description,
      required File imageUrl}) = _UpdateUserDetails;
}
