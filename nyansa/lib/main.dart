import 'package:flutter/material.dart';
import 'package:nyansa/Screens/splashScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Nyansa App',
      theme: ThemeData(
        primaryColor: Colors.cyan,
        shadowColor: Colors.transparent,
        // inputDecorationTheme: InputDecorationTheme(focusColor: Colors.black),
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(primary: Colors.white),
        ),
        appBarTheme: AppBarTheme(
          textTheme: TextTheme(
            bodyText1: TextStyle(fontFamily: "Nunito"),
            bodyText2: TextStyle(fontFamily: "Nunito"),
          ),
        ),
        textTheme: TextTheme(
          bodyText1: TextStyle(fontFamily: "Nunito"),
          bodyText2: TextStyle(fontFamily: "Nunito"),
        ),
        iconTheme: IconThemeData(color: Colors.black),
        scaffoldBackgroundColor: Colors.white,
      ),
      home: SplashScreen(),
    );
  }
}
