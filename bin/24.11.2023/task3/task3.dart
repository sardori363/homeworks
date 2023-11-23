import 'package:http/http.dart';
import 'service/network_service.dart';

void main(List<String> arguments) async{
  String response = await NetworkService.getData(NetworkService.apiProduct);

  print(response);
}