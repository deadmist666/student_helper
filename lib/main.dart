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
                      fontFamily: 'Arial',
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
                  fontFamily: 'Arial',
                  fontSize: 24,
                ),
              )
            ],
          ),
          nextScreen: HomeScreen()),
    );
  }
}
