import 'package:get_it/get_it.dart';
import 'package:markaz_elamal/core/bloc/cubit/global_cubit.dart';
import 'package:markaz_elamal/core/database/cache/cache_helper.dart';
import 'package:markaz_elamal/features/authentication/sign_in/presentation/forgot_password_cubit/forgot_password_cubit.dart';
import 'package:markaz_elamal/features/authentication/sign_in/presentation/sign_cubit/sign_in_cubit.dart';
import 'package:markaz_elamal/features/authentication/sign_up/presentation/cubit/sign_up_cubit.dart';
import 'package:markaz_elamal/features/booking/presentation/booking_cubit/booking_cubit.dart';
import 'package:markaz_elamal/features/home/cubit/home_cubit.dart';
import 'package:markaz_elamal/features/profile/presentation/cubits/edit_profile_cubit/edit_profile_cubit.dart';
import 'package:markaz_elamal/features/profile/presentation/cubits/profile_cubit/profile_cubit.dart';
import 'package:markaz_elamal/features/profile/presentation/cubits/settings_cubit/cubit/settings_cubit.dart';

final sl = GetIt.instance;

void initServiceLocator() {
  //!external
  sl.registerLazySingleton(() => CacheHelper());
  //!Cubits
  sl.registerLazySingleton(() => GlobalCubit());
  sl.registerLazySingleton(() => BookingCubit());
  sl.registerLazySingleton(() => HomeCubit());
  sl.registerLazySingleton(() => SignInCubit());
  sl.registerLazySingleton(() => SignUpCubit());
  sl.registerLazySingleton(() => ForgotPasswordCubit());
  sl.registerLazySingleton(() => EditProfileCubit());
  sl.registerLazySingleton(() => ProfileCubit());
  sl.registerLazySingleton(() => SettingsCubit());
}
