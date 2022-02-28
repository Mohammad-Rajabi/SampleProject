import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sample_project/helper/binding.dart';
import 'package:sample_project/view/login_page.dart';
import 'package:sample_project/view/splash_screen_page.dart';

import 'helper/constants.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Sample Project',
      debugShowCheckedModeBanner: false,
      initialBinding: AppBinding(),
      initialRoute: '/$SPLASH_SCREEN_PAGE',
      getPages: [
        GetPage(name: '/$SPLASH_SCREEN_PAGE', page: () => SplashScreenPage()),
        GetPage(name: '/$LOGING_PAGE', page: () => LoginPage()),
      ],
      theme: ThemeData(
        inputDecorationTheme: InputDecorationTheme(
          border: OutlineInputBorder(),
        ),
        primarySwatch: Colors.blue,
      ),
    );
  }
}
