import 'package:http/http.dart';

class NetworkService {
  static const String baseUrl = "6566d98a64fcff8d730f249c.mockapi.io";
  static const String apiProduct = "/device";

  static Future<String> getData(String api) async {
    Uri url = Uri.https(baseUrl, api);
    Response response = await get(url);
    return response.body;
  }
}
