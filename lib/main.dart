import 'package:bhagwatgita/Sceens/detailPage..dart';
import 'package:bhagwatgita/Sceens/detailPageEnglish.dart';
import 'package:bhagwatgita/Sceens/homePage.dart';
import 'package:bhagwatgita/Sceens/homePageEnglish.dart';
import 'package:bhagwatgita/Sceens/language.dart';
import 'package:bhagwatgita/Sceens/splash_Screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    (MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => splashScreen(),
        'language': (context) => Language(),
        'homePage': (context) => HomePage(),
        'homePageEnglish': (context) => HomePageEnglish(),
        'detailPage': (context) => DetailPage(),
        'detailPageEnglish': (context) => DetailPageEnglish(),
      },
    )),
  );
}
