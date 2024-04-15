import 'package:markaz_elamal/core/database/cache/cache_helper.dart';
import 'package:markaz_elamal/core/services/service_locator.dart';

void onBoardingVisited() {
  sl<CacheHelper>().saveData(key: "isOnBoardingVisited", value: true);
}