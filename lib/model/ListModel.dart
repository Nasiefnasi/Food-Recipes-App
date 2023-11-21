// To parse this JSON data, do
//
//     final getFuntion = getFuntionFromJson(jsonString);

import 'dart:convert';

List<GetFuntion> getFuntionFromJson(String str) => List<GetFuntion>.from(json.decode(str).map((x) => GetFuntion.fromJson(x)));

String getFuntionToJson(List<GetFuntion> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class GetFuntion {
    String id;
    String foodName;
    String description;
    String photo;
    List<String> foodIncrediance;
    List<String> steps;
    String level;
    String timeRequired;
    String calories;
    int v;

    GetFuntion({
        required this.id,
        required this.foodName,
        required this.description,
        required this.photo,
        required this.foodIncrediance,
        required this.steps,
        required this.level,
        required this.timeRequired,
        required this.calories,
        required this.v,
    });

    factory GetFuntion.fromJson(Map<String, dynamic> json) => GetFuntion(
        id: json["_id"],
        foodName: json["foodName"],
        description: json["description"],
        photo: json["photo"],
        foodIncrediance: List<String>.from(json["foodIncrediance"].map((x) => x)),
        steps: List<String>.from(json["steps"].map((x) => x)),
        level: json["level"],
        timeRequired: json["timeRequired"],
        calories: json["calories"],
        v: json["__v"],
    );

    Map<String, dynamic> toJson() => {
        "_id": id,
        "foodName": foodName,
        "description": description,
        "photo": photo,
        "foodIncrediance": List<dynamic>.from(foodIncrediance.map((x) => x)),
        "steps": List<dynamic>.from(steps.map((x) => x)),
        "level": level,
        "timeRequired": timeRequired,
        "calories": calories,
        "__v": v,
    };
}
