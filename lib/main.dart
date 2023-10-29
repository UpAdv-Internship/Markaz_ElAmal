import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:markaz_elamal/app/app.dart';
import 'package:markaz_elamal/core/bloc/cubit/global_cubit.dart';
import 'package:markaz_elamal/core/database/cache/cache_helper.dart';
import 'package:markaz_elamal/core/services/service_locator.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  initServiceLocator();
  await sl<CacheHelper>().init();

  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => sl<GlobalCubit>(),
        ),
      ],
      child: const MarkazElamal(),
    ),
  );
}
