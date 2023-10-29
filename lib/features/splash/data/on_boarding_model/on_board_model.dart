import 'package:markaz_elamal/core/utils/app_assets.dart';
import 'package:markaz_elamal/core/utils/app_strings.dart';

class OnBoaringModel {
  final String imagePath;
  final String title;
  final String subTitle;

  OnBoaringModel({
    required this.imagePath,
    required this.title,
    required this.subTitle,
  }
  
  );

  static List<OnBoaringModel> onBoaringScreens=[
    OnBoaringModel(imagePath: AppAssets.onBoard1, title: AppStrings.onBordingTitle1, subTitle: AppStrings.onBoardingSubTitle1),   
    OnBoaringModel(imagePath: AppAssets.onBoard2, title: AppStrings.onBordingTitle2, subTitle: AppStrings.onBoardingSubTitle2),   
    OnBoaringModel(imagePath: AppAssets.onBoard3, title: AppStrings.onBordingTitle3, subTitle: AppStrings.onBoardingSubTitle3),   
   ];
}