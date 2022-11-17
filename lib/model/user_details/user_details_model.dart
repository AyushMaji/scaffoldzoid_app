// To parse this JSON data, do
//
//     final userDataModel = userDataModelFromJson(jsonString);

import 'dart:convert';

UserDataModel userDataModelFromJson(String str) =>
    UserDataModel.fromJson(json.decode(str));

String userDataModelToJson(UserDataModel data) => json.encode(data.toJson());

class UserDataModel {
  UserDataModel({
    required this.uid,
    required this.role,
    required this.imageUrl,
    required this.name,
    required this.description,
    required this.email,
  });

  String uid;
  String role;
  String imageUrl;
  String name;
  String description;
  String email;

  factory UserDataModel.fromJson(Map<String, dynamic> json) => UserDataModel(
        uid: json["uid"],
        role: json["role"],
        imageUrl: json["imageUrl"],
        name: json["name"],
        description: json["description"],
        email: json["email"],
      );

  Map<String, dynamic> toJson() => {
        "uid": uid,
        "role": role,
        "imageUrl": imageUrl,
        "name": name,
        "description": description,
        "email": email,
      };
}
