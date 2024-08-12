import 'package:booklyapp/Features/splash/presentation/views/splash_view.dart';
import 'package:booklyapp/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home:const SplashView(),
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: kPrimaryKey,
      ),
    );
  }
}
