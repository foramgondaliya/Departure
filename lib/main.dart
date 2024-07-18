import 'package:bhagwatgita/Provider/themeProvider.dart';
import 'package:bhagwatgita/Sceens/detailPage..dart';
import 'package:bhagwatgita/Sceens/detailPageEnglish.dart';
import 'package:bhagwatgita/Sceens/favouritePage.dart';
import 'package:bhagwatgita/Sceens/homePage.dart';
import 'package:bhagwatgita/Sceens/homePageEnglish.dart';
import 'package:bhagwatgita/Sceens/language.dart';
import 'package:bhagwatgita/Sceens/splash_Screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => ThemeProvider(),
        ),
      ],
      child: myApp(),
    ),
  );
}

class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      themeMode: (Provider.of<ThemeProvider>(context).istap)
          ? ThemeMode.dark
          : ThemeMode.light,
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => splashScreen(),
        'language': (context) => LanguagePage(),
        'homePage': (context) => HomePage(),
        'homePageEnglish': (context) => HomePageEnglish(),
        'detailPage': (context) => DetailPage(),
        'detailPageEnglish': (context) => DetailPageEnglish(),
        'favouritePage': (context) => favouritePage(),
      },
    );
    ;
  }
}
