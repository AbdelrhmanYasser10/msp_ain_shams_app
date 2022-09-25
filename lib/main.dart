import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:msp_app_version2/shared/blocs/app_cubit/app_cubit.dart';
import 'package:msp_app_version2/shared/network/local/cache_helper/cache_helper.dart';

import 'modules/splash_screen/splash_screen.dart';
import 'shared/style/themes/themes.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();

  await CacheHelper.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AppCubit(),
      child: BlocConsumer<AppCubit, AppState>(
        listener: (context, state) {},
        builder: (context, state) {
          AppCubit.get(context).getAppTheme();
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'MSP Application',
            darkTheme: darkTheme,
            theme: lightTheme,
            themeMode: AppCubit
                .get(context)
                .isDark! ? ThemeMode.dark : ThemeMode.light,
            home: const SplashScreen(),
          );
        },
      ),
    );
  }
}
