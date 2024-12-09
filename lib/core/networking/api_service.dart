import 'package:dio/dio.dart';
import 'package:doctor_app/features/sign_up/data/model/sign_up_request_body.dart';
import 'package:doctor_app/features/sign_up/data/model/sign_up_response_body.dart';
import 'package:retrofit/retrofit.dart';
import '../../features/login/data/models/login_request_body.dart';
import '../../features/login/data/models/login_response_body.dart';
import 'api_constant.dart';
part 'api_service.g.dart';

@RestApi(baseUrl: ApiConstants.abiBaseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;
  @POST(ApiConstants.login)
  Future<LoginResponseBody> login(
    @Body() LoginRequestBody loginRequestBody,
  );

  @POST(ApiConstants.signUp)
  Future<SignUpResponseBody> signup(
    @Body() SignupRequestBody signUpRequestBody,
  );
}
