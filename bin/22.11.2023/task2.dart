import 'dart:convert';

void main() {
  String data = '''
 {
  "greeting":"Welcome Dart!",
   "topics":[
     "Operations",
     "Loops",
     "Classes",
     "Streams"
   ],
   "version":1.6,
   "level":"intermediate",
   "basedOOP":true
 }
 ''';

  Map<String, dynamic> map = jsonDecode(data);
  WelcomeDart a = WelcomeDart.fromJson(map);
  print(a);

  String getData = jsonEncode(a.toJson());
  print(getData);
}

List<int> numbers = [1, 2, 3, 4, 5, 6];
List<int> setNumbers = [];
List<int> powNumbers = [];

Stream<String> delayedCalling(List<String> tools) async* {
  for (var i in tools) {
    yield i;
    await Future.delayed(Duration(seconds: 1));
  }
}

/// task2_part1
abstract class Construct {
  String? address;
  List<String>? tools;

  build(List<String> tools);

  destroy(List<String> tools);
}

class GreenWorld extends Construct {
  int? id;
  String? name;
  List<String>? properties;

  void addMoreTools(String toolName) {
    this.tools?.add(toolName);
  }

  @override
  build(List<String> tools) {
    print("Please be patient building...\n");
    Stream<String> values = delayedCalling(tools);
    values.listen((event) {
      print(event);
    }, onDone: () => print("\nTayyor"));
  }

  @override
  destroy(List<String> tools) async {
    print("Please be patient, building...");
    Stream<String> values = delayedCalling(tools);
    values.listen((event) {
      print(event);
    }, onDone: () => print("\nTayyor"));
  }
}

class SkyBuilders extends Construct {
  int? id;
  String? name;
  List<String>? properties;

  void addMoreTools(String toolName) {
    this.tools?.add(toolName);
  }

  @override
  build(List<String> tools) {
    print("Please be patient building...\n");
    Stream<String> values = delayedCalling(tools);
    values.listen((event) {
      print(event);
    }, onDone: () => print("\nTayyor"));
  }

  @override
  destroy(List<String> tools) async {
    print("Please be patient, building...");
    Stream<String> values = delayedCalling(tools);
    values.listen((event) {
      print(event);
    }, onDone: () => print("\nTayyor"));
  }
}

/// task2_part3
class WelcomeDart {
  String? greeting;
  double? version;
  String? level;
  bool? basedOOP;

  WelcomeDart.fromJson(Map<String, dynamic> json) {
    greeting = json["greeting"];
    version = json["version"];
    level = json["level"];
    basedOOP = json["basedOOP"];
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> map = {
      "greeting": greeting,
      "version": version,
      "level": level,
      "basedOOP": basedOOP
    };
    return map;
  }
}
