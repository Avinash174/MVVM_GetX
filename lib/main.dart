import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:mvvm_getx/getx_localization/language.dart';
import 'package:mvvm_getx/res/routes/routes.dart';
import 'package:mvvm_getx/view/splashscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        translations: Languages(),
        locale: const Locale('en', 'US'),
        fallbackLocale: const Locale('en', 'US'),
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: SplashScreen(),
        getPages: AppRoutes.appRoutes());
  }
}
