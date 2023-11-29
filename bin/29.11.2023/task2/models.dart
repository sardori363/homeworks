class Food {
  late String dishName;
  late List<Ingredient> ingredients;
  late List<String> preparationSteps;

  Food({
    required this.dishName,
    required this.ingredients,
    required this.preparationSteps,
  });

  Food.fromJson(Map<String, dynamic> json) {
    dishName = json["dish_name"];
    ingredients = List<Ingredient>.from(
        json["ingredients"].map((x) => Ingredient.fromJson(x)));
    preparationSteps =
        List<String>.from(json["preparation_steps"].map((x) => x));
  }

  Map<String, dynamic> toJson() => {
        "dish_name": dishName,
        "ingredients": List<dynamic>.from(ingredients.map((x) => x.toJson())),
        "preparation_steps": List<dynamic>.from(preparationSteps.map((x) => x)),
      };
}

class Ingredient {
  late String name;
  late int quantity;
  String? unit;

  Ingredient({
    required this.name,
    required this.quantity,
    this.unit,
  });

  Ingredient.fromJson(Map<String, dynamic> json) {
    name = json["name"];
    quantity = json["quantity"];
    unit = json["unit"];
  }

  Map<String, dynamic> toJson() => {
        "name": name,
        "quantity": quantity,
        "unit": unit,
      };
}
