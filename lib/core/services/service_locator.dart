import 'package:get_it/get_it.dart';
import 'package:markaz_elamal/core/bloc/cubit/global_cubit.dart';
import 'package:markaz_elamal/core/database/cache/cache_helper.dart';
import 'package:markaz_elamal/features/booking/presentation/booking_cubit/booking_cubit.dart';
import 'package:markaz_elamal/features/home/cubit/home_cubit.dart';

final sl = GetIt.instance;

void initServiceLocator() {
  //!external
  sl.registerLazySingleton(() => CacheHelper());
  //!Cubits
  sl.registerLazySingleton(() => GlobalCubit());
  sl.registerLazySingleton(() => BookingCubit());
  sl.registerLazySingleton(() => HomeCubit());
}
