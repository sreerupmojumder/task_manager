import 'dart:convert';

import 'package:http/http.dart';
import 'package:task_manager/controller/auth_controller.dart';
import 'package:task_manager/data/model/api_response.dart';

class ApiCaller {
  static Future<ApiResponse> getRequest({required String url}) async {
    Response response = await get(
      Uri.parse(url),
      headers: {'token': AuthController.accessToken ?? ''},
    );

    print('URL === $url');
    print('Response === ${response.body}');

    if (response.statusCode == 200) {
      return ApiResponse(
        responseCode: response.statusCode,
        resposeData: jsonDecode(response.body),
        isSuccess: true,
      );
    } else {
      return ApiResponse(
        responseCode: response.statusCode,
        resposeData: jsonDecode(response.body),
        isSuccess: false,
        errorMessage: jsonEncode(response.body),
      );
    }
  }

  static Future<ApiResponse> postRequest({
    required String url,
    Map<String, dynamic>? body,
  }) async {
    Response response = await post(
      Uri.parse(url),
      headers: {
        'token': AuthController.accessToken ?? '',
        'Content-Type': 'application/json',
        'Accept': 'application/json',
      },
      body: body != null ? json.encode(body) : null,
    );

    print('URL === $url');
    print('Response === ${response.body}');

    if (response.statusCode == 200 || response.statusCode == 201) {
      return ApiResponse(
        responseCode: response.statusCode,
        resposeData: jsonDecode(response.body),
        isSuccess: true,
      );
    } else {
      return ApiResponse(
        responseCode: response.statusCode,
        resposeData: jsonDecode(response.body),
        isSuccess: false,
        errorMessage: jsonEncode(response.body),
      );
    }
  }
}
