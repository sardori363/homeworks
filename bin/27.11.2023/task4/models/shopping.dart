import 'dart:convert';

class Shopping {
  String? name;
  int? cost;
  String? category;
  late Details details;
  late Type type;
  String? id;

  Shopping.fromJson(Map<String, dynamic> json) {
    name = json["name"];
    cost = json["cost"];
    category = json["category"];
    details = Details.fromJson(json["details"]);
    type = Type.fromJson(json["type"]);
    id = json["id"];
  }

  Map<String, dynamic> toJson() {
    return {
      "name": name,
      "cost": cost,
      "category": category,
      "details": details.toJson(),
      "type": type.toJson(),
      "id": id, // Include the "id" field in the map
    };
  }
}
class Details {
  String? color;
  int? weight;
  late Dimensions dimensions;

  Details.fromJson(Map<String, dynamic> json){
    color = json["color"];
    weight = json["weight"];
    dimensions = Dimensions.fromJson(json["dimensions"]);
  }

  Map<String, dynamic> toJson(){
    return{
      "color": color,
      "weight": weight,
      "dimensions": dimensions
    };
  }
}

class Type{
  String? name;
  String? comment;
  List<int>? count;
  String? id;

  Type.fromJson(Map<String, dynamic> json){
    name = json["name"];
    comment = json["comment"];
    count = List<int>.from(json["count"].map((e)=>e));
    id = json["id"];
  }

  Map<String, dynamic> toJson(){
    return{
      "name": name,
      "comment": comment,
      "count": count,
      "id": id
    };
  }
}

class Dimensions{
  late int length;
  late int width;
  late int height;

  Dimensions.fromJson(Map<String, dynamic> json){
    length = json["length"];
    width = json["width"];
    height = json["height"];
  }

  Map<String, dynamic> toJson(){
    return{
      "length": length,
      "width": width,
      "height": height
    };
  }

}