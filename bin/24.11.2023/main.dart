import 'package:http/http.dart';
import 'dart:convert';
import 'task2/service/network_service.dart';
import 'task2/models/product.dart';
import 'task2/models/user.dart';

void main(List<String> arguments) async{
  String response = await NetworkService.getData(NetworkService.apiProduct);

  List<Product> func(String json) => List<Product>.from(jsonDecode(json).map((e) => Product.fromJson(e)));
  List<Product> users = func(response);
  print(users[1].details.model);
}