import 'package:http/http.dart';
import 'dart:convert';
import '../service/network_service.dart';

void main(List<String> arguments) async{
  String response = await NetworkService.getData(NetworkService.apiProduct);

  print(response);
}

class Art {
  late int createdAt;
  late String name;
  late int cost;
  late String owner;
  late List<String> colorsInUse;
  late String id;

  Art.fromJson(Map<String, dynamic> json) {
    createdAt = json["createdAt"];
    name = json["name"];
    cost = json["cost"];
    owner = json["owner"];
    colorsInUse = List<String>.from(json["colorsInUse"].map((e) => e.toString()));
    id = json["id"];
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> map = {
      "createdAt": createdAt,
      "name": name,
      "cost": cost,
      "owner": owner,
      "colorsInUse": colorsInUse,
      "id": id
    };
    return map;
  }
}
