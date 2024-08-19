 
import 'package:booklyapp/constants.dart';
import 'package:booklyapp/core/utils/my_routes.dart';
import 'package:flutter/material.dart';
 
void main() {
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter.router,
      debugShowCheckedModeBanner: false,
     
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: kPrimaryKey,
      ),
    );
  }
}
