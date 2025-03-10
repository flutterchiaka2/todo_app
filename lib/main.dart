import 'package:flutter/material.dart';
import 'package:todo_app/pages/splash/splash_page.dart';
import 'package:todo_app/utils/constantas/app_color.dart';

void main() {
  runApp(const ToDoApp());
}

class ToDoApp extends StatelessWidget {
  const ToDoApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ToDo APP',
      theme: ThemeData(
        scaffoldBackgroundColor: AppColors.scaffoldBackground,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        appBarTheme: AppBarTheme(
          backgroundColor: AppColors.scaffoldBackground,
          titleTextStyle: TextStyle(color: AppColors.whiteColor, fontSize: 20),
        ),


      ),
      home: SplashPage(),
    );
  }
}
