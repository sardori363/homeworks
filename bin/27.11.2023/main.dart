import 'package:http/http.dart';
import 'dart:convert';

import 'task5/models/course.dart';
import 'task5/service/network_service.dart';


void main(List<String> arguments) async{
  String response = await NetworkService.getData(NetworkService.apiProduct);

  List<Course> func(String json) => List<Course>.from(jsonDecode(json).map((e) => Course.fromJson(e)));
  List<Course> courses = func(response);
  print(courses[0].instructors[0].email);
}