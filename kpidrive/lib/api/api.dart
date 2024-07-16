import 'package:dio/dio.dart';
import 'package:kpidrive/models/taks.dart';

const String BASE_URL = "https://development.kpi-drive.ru/_api/";

class Api {
  String token;
  final Dio client = Dio();
  Options httpOptions = Options();
  Api({required this.token}) {
    httpOptions.headers = {
      "Authorization": "Bearer $token",
    };
  }

  Future<List<Task>> getTasks() async {
    var formData = FormData.fromMap({
      "period_start": "2024-06-01",
      "period_end": "2024-06-30",
      "period_key": "month",
      "requested_mo_id": "478",
      "behaviour_key": "task",
      "with_result": "false",
      "auth_user_id": "2"
    });
    Response res = await client.post(
      "${BASE_URL}indicators/get_mo_indicators",
      data: formData,
      options: httpOptions,
    );
    if (res.statusCode == 200) {
      if (res.data["MESSAGES"]["error"] != null) {
        throw ApiExeption(res.data["MESSAGES"]["error"]);
      }
      List<Task> tasks = [];
      for (var element in res.data["DATA"]["rows"]) {
        tasks.add(Task.fromJson(element));
      }
      return tasks;
    } else {
      throw ApiExeption("${res.statusCode ?? -1}\n${res.data}");
    }
  }
}

class ApiExeption implements Exception {
  String message;
  ApiExeption(this.message);
}
