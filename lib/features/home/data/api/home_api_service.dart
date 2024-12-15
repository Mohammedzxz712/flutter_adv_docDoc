import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import '../../../../core/networking/api_constant.dart';
import '../models/specializations_response_model.dart';
import 'home_api_constants.dart';
part 'home_api_service.g.dart';
@RestApi(baseUrl: ApiConstants.abiBaseUrl)
abstract class HomeApiService {
  factory HomeApiService(Dio dio) = _HomeApiService;

  @GET(HomeApiConstants.specializationEP)
  Future<SpecializationsResponseModel> getSpecializations();
}