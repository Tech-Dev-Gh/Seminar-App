import 'package:flutter/material.dart';
import 'package:seminar_app/constants.dart';

import 'screens/intro.dart';

void main() => runApp(SeminarApp());

class SeminarApp extends StatelessWidget {
  const SeminarApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Seminar App",
      theme: ThemeData(
        fontFamily: kPoppinsfont,
        primaryColor: kprimaryColor,
        textTheme: TextTheme(
          bodyText1: TextStyle(fontFamily: kPoppinsfont),
          bodyText2: TextStyle(fontFamily: kPoppinsfont),
        ),
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            primary: Colors.white,
            backgroundColor: kprimaryColor,
          ),
        ),
      ),
      home: Intro(),
    );
  }
}
