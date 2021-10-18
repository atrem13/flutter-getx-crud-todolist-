import 'package:get/get.dart';
import 'package:openaccess/config.dart';

class ApiController extends GetConnect {
  static final ApiController _instance = ApiController._internal();
  factory ApiController() => _instance;

  ApiController._internal() {
    print("Api Controller initiate");
    httpClient.baseUrl = Config.serverApiUrl;
  }

  getTodo() => get('/posts');
}
