// To parse this JSON data, do
//
//     final productDataModel = productDataModelFromJson(jsonString);

import 'dart:convert';

ProductDataModel productDataModelFromJson(String str) =>
    ProductDataModel.fromJson(json.decode(str));

String productDataModelToJson(ProductDataModel data) =>
    json.encode(data.toJson());

class ProductDataModel {
  ProductDataModel({
    required this.iteams,
    required this.productId,
    required this.name,
    required this.isAvailability,
    required this.category,
    required this.userId,
  });

  List<Iteam> iteams;
  String productId;
  String name;
  bool isAvailability;
  String category;
  String userId;

  factory ProductDataModel.fromJson(Map<String, dynamic> json) =>
      ProductDataModel(
        iteams: List<Iteam>.from(json["iteams"].map((x) => Iteam.fromJson(x))),
        productId: json["productId"],
        name: json["name"],
        isAvailability: json["isAvailability"],
        category: json["category"],
        userId: json["userId"],
      );

  Map<String, dynamic> toJson() => {
        "iteams": List<dynamic>.from(iteams.map((x) => x.toJson())),
        "productId": productId,
        "name": name,
        "isAvailability": isAvailability,
        "category": category,
        "userId": userId,
      };
}

class Iteam {
  Iteam({
    required this.quantity,
    required this.price,
  });

  String quantity;
  String price;

  factory Iteam.fromJson(Map<String, dynamic> json) => Iteam(
        quantity: json["quantity"],
        price: json["price"],
      );

  Map<String, dynamic> toJson() => {
        "quantity": quantity,
        "price": price,
      };
}
