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
  postTodo({required String title}) => post('/posts', {
        'title': title,
      });
  updateTodo({required String title, required String id}) =>
      patch('/posts/${id}', {
        'title': title,
      });

  removeTodo({required String id}) => delete('/posts/${id}');
}
