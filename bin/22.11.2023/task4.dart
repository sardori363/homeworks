import 'dart:convert';

/// task4
void main() {
  String data = '''
    {
     "name": "Murod",
     "friends":[
       "Friend1",
       "Friend2",
       "Friend3",
       "Friend4"
     ],
     "profession": {
       "type": "Developer",
       "salary": 2423.00,
       "companyBranches": [
         "Yakkasaroy 1.6A",
         "Beruniy ko'chasi 45/67"
       ]
     }
   }
   ''';

  Map<String, dynamic> map = jsonDecode(data);
  Person a = Person.fromJson(map);
  print("object:");
  print(a);
}

class Profession{
  late String type;
  late double salary;
  late List<String> companyBranches;

  Profession.fromJson(Map<String, dynamic> json) {
    type = json["type"];
    salary = json["salary"];
    companyBranches = List<String>.from(json["companyBranches"].map((e) => e));
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> map = {
      "type": type,
      "salary": salary,
      "companyBranches": companyBranches
    };
    return map;
  }

  @override
  String toString() {
    return 'Profession{type: $type, salary: $salary, companyBranches: $companyBranches}';
  }
}

class Person {
  late String name;
  late List<String> friends;
  late Profession profession;

  Person.fromJson(Map<String, dynamic> json) {
    name = json["name"];
    friends = List<String>.from(json["friends"].map((e) => e));
    profession = Profession.fromJson(json["profession"]);
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> map = {
      "name": name,
      "friends": friends,
      "profession": profession.toJson()
    };
    return map;
  }

  @override
  String toString() {
    return 'Person{name: $name, friends: $friends, profession: $profession}';
  }
}
