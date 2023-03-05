import 'package:flutter/material.dart';
import 'package:task_management_app/practice.dart';
import 'package:task_management_app/view/LoginPage.dart';
import 'package:task_management_app/view/SlidePage.dart';
import 'package:task_management_app/view/SplashScreen.dart';
import 'package:task_management_app/view/NavBar/NavBar.dart';
import 'package:task_management_app/widget/Onboarding.dart';
import 'package:task_management_app/widget/common_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: bgClr,
        primarySwatch: Colors.blue,
        appBarTheme: const AppBarTheme(
          backgroundColor: bgClr
        )
      ),
      // home: SplashScreen(),
      home: LoginPage(),
      // home: Practice(),
    );
  }
}
