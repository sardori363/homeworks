class User{
  late String name;
  late String comment;
  late List<int> age;
  late String id;

  User.fromJson(Map<String, dynamic> json) {
    name = json["name"];
    comment = json["comment"];
    age = List<int>.from(json["age"].map((e) => e));
    id = json["id"];
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> map = {
      "name": name,
      "comment": comment,
      "age": age,
      "id": id
    };
    return map;
  }


  @override
  String toString() {
    return 'User{name: $name, comment: $comment, ages: $age, id: $id}';
  }
}