import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:shefaa_app_flutter/core/networking/api_constant.dart';
import 'package:shefaa_app_flutter/features/login/data/model/login_request_body.dart';
import 'package:shefaa_app_flutter/features/login/data/model/login_response.dart';
part 'api_services.g.dart';

@RestApi(baseUrl: ApiConstant.apiBaseUrl)
abstract class ApiServices {
  factory ApiServices(Dio dio, {String? baseUrl}) = _ApiServices;

  @POST(ApiConstant.login)
  Future<LoginResponse> login(@Body() LoginReguestBody loginRequestBody);
}
