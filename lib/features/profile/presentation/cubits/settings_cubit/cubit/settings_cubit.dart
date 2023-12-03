import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:markaz_elamal/features/profile/presentation/cubits/settings_cubit/cubit/settings_state.dart';

class SettingsCubit extends Cubit<SettingsState> {
  SettingsCubit() : super(SettingsInitial());
TextEditingController currentPasswordController = TextEditingController();
TextEditingController newPasswordController = TextEditingController();
TextEditingController confitmNewPasswordController = TextEditingController();

//!current password 
 bool obscureCurrentPassword = true;
  void obscureShowCurrentPassword() {
    if (obscureCurrentPassword == true) {
      obscureCurrentPassword = false;
    } else {
      obscureCurrentPassword = true;
    }
    emit(CurrentPasswordSuffixIcon());
  }
//!new password
bool obscureNewPassword = true;
  void obscureShowNewPassword() {
    if (obscureNewPassword == true) {
      obscureNewPassword = false;
    } else {
      obscureNewPassword = true;
    }
    emit(NewPasswordSuffixIcon());
  }
//!new password
bool obscureConfrimNewPassword = true;
  void obscureShowConfirmNewPassword() {
    if (obscureConfrimNewPassword == true) {
      obscureConfrimNewPassword = false;
    } else {
      obscureConfrimNewPassword = true;
    }
    emit(ConfirmNewPasswordSuffixIcon());
  }
  //! Rating Alert
  TextEditingController rateCommentController = TextEditingController();
  //* Rating Stars
  int rating = 1;
  void changeRating(index) {
    switch (index) {
      case 1:
        rating = 1;
      case 2:
        rating = 2;
      case 3:
        rating = 3;
      case 4:
        rating = 4;
      case 5:
        rating = 5;
        break;
      default:
    }
    emit(RateChangeState());
  }

  void clearControllers() {
    rateCommentController.clear();
  }

  //! switch icon name privacy
  bool switchOnName=false;
  void switchName(value){
    switchOnName=!switchOnName;
    emit(SwitchNameChanged());
  }
  //! switch icon phone privacy
  bool switchOnPhone=false;
  void switchPhone(value){
switchOnPhone=!switchOnPhone;
    emit(SwitchPhoneChanged());
  }
  //! switch icon email privacy
  bool switchOnEmail=false;
  void switchEmail(value){
switchOnEmail=!switchOnEmail;
    emit(SwitchEmailChanged());
  }
  //! switch icon email privacy
  bool switchOnRecomend=false;
  void switchRecomend(value){
switchOnRecomend=!switchOnRecomend;
    emit(SwitchRecomendChanged());
  }
}
