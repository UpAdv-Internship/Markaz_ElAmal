import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:markaz_elamal/core/bloc/cubit/global_state.dart';
import 'package:markaz_elamal/core/database/cache/cache_helper.dart';
import 'package:markaz_elamal/core/services/service_locator.dart';

class GlobalCubit extends Cubit<GlobalState> {
  GlobalCubit() : super(GlobalInitial());

  String langCode = 'ar';

  void changeLang(String codeLang) async {
    emit(ChangeLangLoading());
    langCode = codeLang;
    await sl<CacheHelper>().cacheLanguage(codeLang);
    emit(ChangeLangSuccess());
  }

  void getCachedLang() {
    emit(ChangeLangLoading());

    final cachedLang = sl<CacheHelper>().getCachedLanguage();
    langCode = cachedLang;
    emit(ChangeLangSuccess());
  }

  void switchLang() {
    String cachedLang = sl<CacheHelper>().getCachedLanguage();
    sl<CacheHelper>().cacheLanguage(cachedLang == "ar" ? "en" : "ar");
    langCode = sl<CacheHelper>().getCachedLanguage();
    emit(ChangeLangSuccess());
  }
}
