import 'package:doctor_app/features/login/data/models/login_request_body.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../data/repo/login_repo.dart';
import 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepo  _loginRepo;
  LoginCubit(this._loginRepo) : super(const LoginState.initial());

  TextEditingController passwordController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  void emitLoginState() async{
    emit(const LoginState.loading());
    final response =await  _loginRepo.login(
      LoginRequestBody(
        email: emailController.text,
        password: passwordController.text
      )
    );
    response.when(success: (loginResponse){
      emit(LoginState.success(loginResponse));
    },
        failure: (error){
      emit(LoginState.error(error: error.apiErrorModel.message??''));
        }
    );


  }
}
