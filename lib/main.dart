import 'package:e_commerce_app/consts/consts.dart';
import 'package:e_commerce_app/views/splash_screen/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    //we are using getX so we have to chnage materialApp into getMaterialApp
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: appname,
      theme: ThemeData(
          scaffoldBackgroundColor: Colors.transparent,
          appBarTheme: AppBarTheme(
              backgroundColor: Colors.black,
              iconTheme: IconThemeData(color: darkFontGrey)),
          fontFamily: regular),
      home: SplashScreen(),
    );
  }
}
