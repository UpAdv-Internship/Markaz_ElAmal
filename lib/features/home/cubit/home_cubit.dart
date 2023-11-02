import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:markaz_elamal/features/booking/presentation/screens/doctor_profile.dart';
import 'package:markaz_elamal/features/home/presentation/screens/home.dart';

import 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());

  List<Widget> screens = [
    const HomeScreen(),
    const DoctorProfile(),
    const HomeScreen(),
    const HomeScreen()
  ];
  int currenIndex = 0;
  void changeIndex(index) {
    currenIndex = index;
    emit(CurrenIndexState());
  }
}
