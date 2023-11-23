import 'package:http/http.dart';

class NetworkService{

  static final String baseUrl = "6554a27063cafc694fe6bbeb.mockapi.io";

  static final String apiProduct = "/art";

  static Future<String>getData(String api)async{
    Uri url = Uri.https(baseUrl, api);
    Response response = await get(url);
    return response.body;
  }
}