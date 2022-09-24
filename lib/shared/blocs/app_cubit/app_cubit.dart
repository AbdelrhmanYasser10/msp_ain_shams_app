import 'package:flutter_bloc/flutter_bloc.dart';

import '../../network/local/cache_helper/cache_helper.dart';

part 'app_state.dart';

class AppCubit extends Cubit<AppState> {
  AppCubit() : super(AppInitial());
  bool? isDark;

  void getAppTheme() {
    isDark = CacheHelper.getData(key: 'isDark') ?? true;
    emit(AppGetTheme());
  }

  void changeAppTheme({required bool value}) {
    isDark = value;
    CacheHelper.saveData(key: 'isDark', value: value);
    emit(AppChangeTheme());
  }

  static AppCubit get(context) => BlocProvider.of(context);
}
