import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:markaz_elamal/app/app.dart';
import 'package:markaz_elamal/core/bloc/cubit/global_cubit.dart';
import 'package:markaz_elamal/core/database/cache/cache_helper.dart';
import 'package:markaz_elamal/core/services/service_locator.dart';
import 'package:markaz_elamal/features/authentication/sign_in/presentation/forgot_password_cubit/forgot_password_cubit.dart';
import 'package:markaz_elamal/features/authentication/sign_in/presentation/sign_cubit/sign_in_cubit.dart';
import 'package:markaz_elamal/features/authentication/sign_up/presentation/cubit/sign_up_cubit.dart';
import 'package:markaz_elamal/features/booking/presentation/booking_cubit/booking_cubit.dart';
import 'package:markaz_elamal/features/home/cubit/home_cubit.dart';
import 'package:markaz_elamal/features/profile/presentation/cubits/edit_profile_cubit/edit_profile_cubit.dart';
import 'package:markaz_elamal/features/profile/presentation/cubits/profile_cubit/profile_cubit.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  initServiceLocator();
  await sl<CacheHelper>().init();

  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => sl<GlobalCubit>()),
        BlocProvider(create: (context) => sl<BookingCubit>()),
        BlocProvider(create: (context) => sl<SignInCubit>()),
        BlocProvider(create: (context) => sl<SignUpCubit>()),
        BlocProvider(create: (context) => sl<HomeCubit>()),
        BlocProvider(create: (context) => sl<ForgotPasswordCubit>()),
        BlocProvider(create: (context) => sl<EditProfileCubit>()),
        BlocProvider(create: (context) => sl<ProfileCubit>()),
      ],
      child: const MarkazElamal(),
    ),
  );
}
