import 'dart:convert';

/// task3
void main() {
  String data = '''
    {
     "name": "PDP University",
     "students":[
     "Student1",
     "Student2",
     "Student3",
     "Student4"
     ],
     "id":1,
     "isCertified":true,
     "courses":[
     "Flutter",
     "Java",
     "Python"
     ]
   }
   ''';

  Map<String, dynamic> map = jsonDecode(data);
  University a = University.fromJson(map);
  print(a);

  String getData = jsonEncode(a.toJson());
  print(getData);
}

class University {
  late String name;
  late List<String> students;
  late int id;
  late bool isCertified;
  late List<String> courses;

  University.fromJson(Map<String, dynamic> json) {
    name = json["name"];
    students = List<String>.from(json["students"].map((e) => e));
    id = json["id"];
    isCertified = json["isCertified"];
    courses = List<String>.from(json["courses"].map((e) => e));
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> map = {
      "name": name,
      "students": students,
      "id": id,
      "isCertified": isCertified,
      "courses": courses
    };
    return map;
  }
}
