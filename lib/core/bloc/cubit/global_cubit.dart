import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:markaz_elamal/core/bloc/cubit/global_state.dart';
import 'package:markaz_elamal/core/database/cache/cache_helper.dart';
import 'package:markaz_elamal/core/services/service_locator.dart';

class GlobalCubit extends Cubit<GlobalState> {
  GlobalCubit() : super(GlobalInitial());

  void changeLang(String codeLang) async {
    emit(ChangeLangLoading());
    await sl<CacheHelper>().cacheLanguage(codeLang);
    emit(ChangeLangSuccess());
  }

  String getCachedLang() {
    emit(ChangeLangLoading());

    final String cachedLang = sl<CacheHelper>().getCachedLanguage();
    emit(ChangeLangSuccess());
    return cachedLang;
  }
}
