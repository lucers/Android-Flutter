import 'package:android_flutter/http/http_manager.dart';

class HttpService {
  static Future<Object> requestObjectList() => HttpManager.post("").then((value) => Object());
}
