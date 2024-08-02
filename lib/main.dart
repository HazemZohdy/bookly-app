import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import 'Features/splash/presentation/views/splash_view.dart';

void main() {
  runApp( const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      home: SplashView(),
    );
  }
}