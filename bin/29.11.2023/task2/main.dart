import 'dart:convert';
import 'package:http/http.dart';
import 'NetworkService.dart';
import 'models.dart';

void main() async{
  Ingredient ingredient1 = Ingredient(name: "aa", quantity: 100);
  Ingredient ingredient2 = Ingredient(name: "aa2", quantity: 1);
  Food food = Food(dishName: 'avqat', ingredients: [ingredient1, ingredient2], preparationSteps: ["a1, a2"]);

  Map<String, dynamic> json = food.toJson();
  String body = jsonEncode(json);
  Uri url = Uri.https(NetworkService.baseUrl,
      NetworkService.apiProduct);
  Response response = await
  post
    (
      url, body: body,
      headers: {'Content-Type': 'application/json'});
  if (response.statusCode == 200 ||
      response.statusCode == 201) {
    print("Successfully posted: ${response.body}");
  } else {
    print("Something went wrong at ${response.statusCode}");
  }
}