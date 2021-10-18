import 'package:openaccess/env.dart';

const SERVER_HOST_DEV = 'https://jsonplaceholder.typicode.com';

const SERVER_HOST_PROD = 'https://jsonplaceholder.typicode.com';

const SERVER_API_URL = ENV_IS_DEV ? SERVER_HOST_DEV : SERVER_HOST_PROD;

const ENV_IS_DEV = ENV == "DEV";

class Config {
  static final Config _instance = Config._internal();
  factory Config() => _instance;
  static String serverApiUrl = SERVER_API_URL;

  Config._internal() {
    print("initiate config");
  }
}
