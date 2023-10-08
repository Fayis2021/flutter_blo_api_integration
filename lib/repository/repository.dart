import 'package:dio/dio.dart';

class Apidatafetching {
  static Future<String> apicallfetchingmydata1() async {
    final Response res = await Dio(BaseOptions()).get("");

    if (res.statusCode == 200) {
      return res.data[0]["email"].toString();
    } else {
      throw Exception();
    }
  }
}
