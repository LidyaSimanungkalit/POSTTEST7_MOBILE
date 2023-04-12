import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:posttest7_125_lidya/splashScreen.dart';
import 'LandingPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.purple,
          // textTheme: GoogleFonts.robotoTextTheme(const TextTheme(
          textTheme: GoogleFonts.robotoTextTheme(const TextTheme(
              displayLarge:
                  TextStyle(color: Colors.white, fontFamily: 'Roboto'),
              displayMedium: TextStyle(color: Colors.white),
              displaySmall: TextStyle(color: Colors.white)))),
      home: Scaffold(
        body: SplashScreen(),
      ),
    );
  }
}
