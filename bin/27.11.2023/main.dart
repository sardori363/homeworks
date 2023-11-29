import 'package:http/http.dart';
import 'dart:convert';

import 'task2/models/person.dart';
import 'task5/models/course.dart';
import 'task5/service/network_service.dart';


void main(List<String> arguments) async{
  String response = await NetworkService.getData(NetworkService.apiProduct);

  List<Product> func(String json) => List<Product>.from(jsonDecode(json).map((e) => Product.fromJson(e)));
  List<Product> courses = func(response);
  print(courses[0]);
}