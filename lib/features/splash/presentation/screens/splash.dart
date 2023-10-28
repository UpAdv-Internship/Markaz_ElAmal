import 'package:flutter/material.dart';
import 'package:markaz_elamal/core/utils/app_assets.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            
            children: [
              Image.asset(AppAssets.appLogo),
              const Text('Markaz ElAmal')
            
            ],
          ),
        ),
      ),
    );
  }
}