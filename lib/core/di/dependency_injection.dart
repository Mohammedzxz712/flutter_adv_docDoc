import 'package:dio/dio.dart';
import 'package:doctor_app/core/networking/api_service.dart';
import 'package:doctor_app/features/home/data/api/home_api_service.dart';
import 'package:doctor_app/features/home/data/repo/home_repo.dart';
import 'package:doctor_app/features/login/data/repo/login_repo.dart';
import 'package:doctor_app/features/login/logic/login_cubit.dart';
import 'package:doctor_app/features/sign_up/data/repo/sign_up_repo.dart';
import 'package:doctor_app/features/sign_up/logic/sign_up_cubit.dart';
import 'package:get_it/get_it.dart';

import '../../features/home/logic/home_cubit.dart';
import '../networking/dio_factory.dart';
final getIt = GetIt.instance;

Future<void> setUpGetIt() async{
 //Dio & ApiService
  Dio dio =  DioFactory.getDio();
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));

  //LoginRepo
  getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt()));
  getIt.registerFactory<LoginCubit>(() => LoginCubit(getIt()));
  //signUpRepo

  getIt.registerLazySingleton<SignUpRepo>(() => SignUpRepo(getIt()));
  getIt.registerFactory<SignUpCubit>(() => SignUpCubit(getIt()));

// homeRepo
  getIt.registerLazySingleton<HomeApiService>(() => HomeApiService(dio));
  getIt.registerLazySingleton<HomeRepo>(() => HomeRepo(getIt()));

}