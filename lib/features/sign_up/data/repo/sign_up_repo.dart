import 'package:doctor_app/core/networking/api_result.dart';

import '../../../../core/networking/api_error_handler.dart';
import '../../../../core/networking/api_service.dart';
import '../model/sign_up_request_body.dart';
import '../model/sign_up_response_body.dart';

class SignUpRepo {
  final   ApiService _apiService;
  SignUpRepo(this._apiService);

  Future<ApiResult<SignUpResponseBody>> signUp(SignupRequestBody signUpRequestBody)async{
   try{
     final response = await _apiService.signup(signUpRequestBody);
     return ApiResult.success(response);
   }catch(error){
      return ApiResult.failure(ErrorHandler.handle(error));
   }

  }
}