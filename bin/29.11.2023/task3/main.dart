import 'dart:convert';
import 'package:http/http.dart';
import 'NetworkService.dart';
import 'models.dart';

void main() async{
  Connectivity connectivity = Connectivity("network1", "wifi1", "bluetooth1", ["ports1", "ports2"]);
  Battery battery = Battery("capacity1", "type1", true);
  Main main = Main("resolution1", "video_capability1");
  Front front = Front("resolution2", "video_capability2");
  Camera camera = Camera(main, front);
  Memory memory = Memory("RAM1", "storage1", true, "max_expandable1");
  Processor processor = Processor("manufacturer1", "model1", 123, "clock_speed1");
  Display display = Display("type1", "size1", "resolution1");

  Device device = Device("device 1", "brand 1", "model 1", 2024, "color 1", display, processor, memory, camera, battery, connectivity, "operating_system 1", ["features"]);

  Map<String, dynamic> json = device.toJson();
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