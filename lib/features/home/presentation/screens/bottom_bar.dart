import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:markaz_elamal/core/locale/app_locale.dart';
import 'package:markaz_elamal/core/utils/app_strings.dart';
import 'package:markaz_elamal/core/widgets/custom_google_nav_bar.dart';

import '../../cubit/home_cubit.dart';
import '../../cubit/home_state.dart';

class BotthomNavv extends StatelessWidget {
  const BotthomNavv({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(builder: (context, state) {
      return Scaffold(
        body: BlocProvider.of<HomeCubit>(context)
            .screens[BlocProvider.of<HomeCubit>(context).currenIndex],
        bottomNavigationBar: CustomGNav(
            onTap: (value) {
              BlocProvider.of<HomeCubit>(context).changeIndex(value);
            },
            currentIndex: BlocProvider.of<HomeCubit>(context).currenIndex,
            tabs: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                  icon: const Icon(Icons.home),
                  label: AppStrings.home.tr(context)),
              BottomNavigationBarItem(
                  icon: const Icon(Icons.apps_sharp),
                  label: AppStrings.category.tr(context)),
              BottomNavigationBarItem(
                  icon: const Icon(Icons.watch_outlined),
                  label: AppStrings.book.tr(context)),
              BottomNavigationBarItem(
                  icon: const Icon(Icons.person),
                  label: AppStrings.profile.tr(context)),
            ]),
      );
    });
  }
}
