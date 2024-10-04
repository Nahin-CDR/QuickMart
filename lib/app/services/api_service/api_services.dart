
import 'package:quick_mart/app/services/model/api_response_model.dart';
import 'package:http/http.dart' as http;
import '../global/api_request_method.dart';

class ApiService {
  Future<ApiResponseModel> requestToServer({
    required String requestUrl,
    required ApiRequestMethod requestMethod,
    Map<String, String>? headers,
    Object? body,
  }) async {
    Uri url = Uri.parse(requestUrl);
    http.Response response;

    try {
      if (requestMethod == ApiRequestMethod.postRequest) {
        response = await http  /// request send
            .post(url, headers: headers, body:body)
            .timeout(
            const Duration(
              milliseconds: 200,
            ),
            onTimeout: () =>
                http.post(url, headers: headers, body: body));
      } else {
        response = await http.get(url,headers:headers, ).timeout(const Duration(seconds: 30),
            onTimeout: () => http.get(url,headers: headers));
      }
      if (response.statusCode == 200) {
        return ApiResponseModel(200, response.body);
      } else if (response.statusCode == 201) {
        return ApiResponseModel(201, response.body);
      } else if (response.statusCode == 204) {
        return ApiResponseModel(204, response.body);
      } else if (response.statusCode == 400) {
        return ApiResponseModel(400, response.body);
      } else if (response.statusCode == 401) {
        return ApiResponseModel(401, response.body);
      } else if (response.statusCode == 403) {
        return ApiResponseModel(403, response.body);
      } else if (response.statusCode == 404) {
        return ApiResponseModel(404, response.body);
      } else if (response.statusCode == 422) {
        return ApiResponseModel(422, response.body);
      } else {
        return ApiResponseModel(500, response.body);
      }
    } catch (e) {
      print("--------------API services Error $e");
      return ApiResponseModel(500, "");
    }
  }
}