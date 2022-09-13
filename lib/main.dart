import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:figma_design/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Student Helper',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Color(0xFFFFFFFF),
        textTheme: TextTheme(
          headline1: TextStyle(
            fontFamily: 'Rubik',
            fontWeight: FontWeight.bold,
            fontSize: 20,
            color: Color(0xFF081E3F),
          ),
          headline2: TextStyle(
            fontFamily: 'Rubik',
            fontWeight: FontWeight.w600,
            fontSize: 16,
            color: Color(0xFF333333),
          ),
          headline3: TextStyle(
            fontFamily: 'Rubik',
            fontWeight: FontWeight.w600,
            fontSize: 14,
            color: Color(0xFF3C3C43).withOpacity(0.6),
          ),
          bodyText1: TextStyle(
            fontFamily: 'Rubik',
            fontWeight: FontWeight.normal,
            fontSize: 14,
          ),
          bodyText2: TextStyle(
            fontFamily: 'Rubik',
            fontWeight: FontWeight.normal,
            fontSize: 10,
          ),
        ),
      ),
      home: AnimatedSplashScreen(
        splashIconSize: 300,
          splash: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                child: Text(
                  'НАСОА',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Color(0xFFFFFFFF),
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Rubik',
                      fontSize: 50),
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    color: Color(0xFF2D9CDB)),
              ),
              Text(
                'Помічник студента',
                style: TextStyle(
                  color: Color(0xFF2D9CDB),
                  fontFamily: 'Rubik',
                  fontSize: 24,
                ),
              )
            ],
          ),
          nextScreen: HomeScreen()),
    );
  }
}
