import 'package:http/http.dart';

class NetworkService {
  static const String baseUrl = "655f64f0879575426b4540ef.mockapi.io";
  static const String apiProduct = "/Food";

  static Future<String> getData(String api) async {
    Uri url = Uri.https(baseUrl, api);
    Response response = await get(url);
    return response.body;
  }
}
