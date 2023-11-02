import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:markaz_elamal/features/authentication/sign_up/presentation/cubit/sign_up_state.dart';

class SignUpCubit extends Cubit<SignUpState> {
  SignUpCubit() : super(SignUpInitial());
  GlobalKey<FormState> signUpFormController = GlobalKey();
  TextEditingController nameTextEditingController = TextEditingController();
  TextEditingController phoneTextEditingController = TextEditingController();
  TextEditingController emailTextEditingController = TextEditingController();
  TextEditingController passwordTextEditingController = TextEditingController();
  TextEditingController confirmPasswordTextEditingController =
      TextEditingController();
  bool obscurePasswordTextValue = true;
  void obscurePasswordText() {
    if (obscurePasswordTextValue == true) {
      obscurePasswordTextValue = false;
    } else {
      obscurePasswordTextValue = true;
    }
    emit(ChangePasswordSuffixIcon());
  }

  bool obscureConfirmPasswordTextValue = true;
  void obscureConfirmPasswordText() {
    if (obscureConfirmPasswordTextValue == true) {
      obscureConfirmPasswordTextValue = false;
    } else {
      obscureConfirmPasswordTextValue = true;
    }
    emit(ChangePasswordSuffixIcon());
  }
}
