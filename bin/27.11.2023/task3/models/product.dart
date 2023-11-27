import 'dart:convert';
import 'dart:io';

class Person{
  late String name;
  late int age;
  late bool isStudent;
  late List<int> grades;
  late Address address;

  Person.fromJson(Map<String, dynamic> json){
    name = json["name"];
    age = json["age"];
    isStudent = json["isStudent"];
    grades = List<int>.from(json["grades"].map((e)=>e));
    address = Address.fromJson(json["address"]);
  }

  Map<String, dynamic> toJson(){
    return {
      "name": name,
      "age":age,
      "isStudent": isStudent,
      "grades": grades,
      "address":address
    };
  }



}

class Address {
  late String city;
  late String zipCode;

  Address.fromJson(Map<String, dynamic> json){
    city = json["city"];
    zipCode = json["zipCode"];
  }

  Map<String, dynamic> toJson(){
    return {
      "city": city,
      "zipCode":zipCode
    };
  }
}

List<Person> dataFromJson(String data) => List<Person>.from(jsonDecode(data).map((e)=>Person.fromJson(e)));

String dataToJson(Person person) => jsonEncode(person.toJson());