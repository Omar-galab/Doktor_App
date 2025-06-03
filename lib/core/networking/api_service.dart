import 'package:dio/dio.dart';
import 'package:doctor_app/core/networking/api_constants.dart';
import 'package:doctor_app/feature/login/data/models/login_request_body.dart';
import 'package:doctor_app/feature/login/data/models/login_respons.dart';
import 'package:retrofit/retrofit.dart';

part 'api_service.g.dart';
@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class ApiService {
  factory ApiService(Dio dio ,{String baseUrl}) = _ApiService;

  @POST(ApiConstants.login)
  Future<LoginRespons> login(
    @Body() LoginRequestBody loginRequstBody,
  );

  
}