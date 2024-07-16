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

  Future<List<Task>> getTasks({
    String periodStart = "2024-06-01",
    String periodEnd = "2024-06-30",
    String periodKey = "month",
    String requestedMoId = "478",
    String behaviourKey = "task",
    String withResult = "false",
    String authUserId = "2",
  }) async {
    var formData = FormData.fromMap({
      "period_start": periodStart,
      "period_end": periodEnd,
      "period_key": periodKey,
      "requested_mo_id": requestedMoId,
      "behaviour_key": behaviourKey,
      "with_result": withResult,
      "auth_user_id": authUserId,
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

  Future<bool> updateField({
    String periodStart = "2024-06-01",
    String periodEnd = "2024-06-30",
    String periodKey = "month",
    required int indicatorToMoId,
    required String fieldName,
    required dynamic fieldValue,
    String authUserId = "2",
  }) async {
    var formData = FormData.fromMap({
      "period_start": periodStart,
      "period_end": periodEnd,
      "period_key": periodKey,
      "indicator_to_mo_id": indicatorToMoId,
      "field_name": fieldName,
      "field_value": fieldValue,
      "auth_user_id": authUserId,
    });
    Response res = await client.post(
      "${BASE_URL}indicators/save_indicator_instance_field",
      data: formData,
      options: httpOptions,
    );
    if (res.statusCode == 200) {
      if (res.data["MESSAGES"]["error"] != null) {
        throw ApiExeption(res.data["MESSAGES"]["error"]);
      }
      
      return true;
    } else {
      throw ApiExeption("${res.statusCode ?? -1}\n${res.data}");
    }
  }
}

class ApiExeption implements Exception {
  String message;
  ApiExeption(this.message);
}
