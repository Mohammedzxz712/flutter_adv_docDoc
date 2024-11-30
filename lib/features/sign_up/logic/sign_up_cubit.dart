import 'package:doctor_app/features/sign_up/data/repo/sign_up_repo.dart';
import 'package:doctor_app/features/sign_up/logic/sign_up_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../data/model/sign_up_request_body.dart';
class SignUpCubit extends Cubit<SignUpStates> {
  final SignUpRepo _signUpRepo;
  SignUpCubit(this._signUpRepo) : super(const SignUpStates.initial());

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController passwordConfirmationController =
  TextEditingController();
  final formKey = GlobalKey<FormState>();


  void emitSignupStates() async {
    emit(const SignUpStates.loading());
    final response = await _signUpRepo.signUp(SignupRequestBody(
        name: nameController.text,
        email: emailController.text,
        phone: phoneController.text,
        password: passwordController.text,
        passwordConfirmation: passwordConfirmationController.text, gender: 0));
    response.when(
      success: (data) {
        emit(SignUpStates.success(data));
      },
      failure: (error) {
        emit(SignUpStates.error(error: error.apiErrorModel.message ?? ''));
      },
    );
  }
}
