import 'package:bhagwatgita/Provider/themeProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Language extends StatefulWidget {
  const Language({super.key});

  @override
  State<Language> createState() => _LanguageState();
}

class _LanguageState extends State<Language> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Switch(
              value: Provider.of<ThemeProvider>(context).istap,
              onChanged: (val) {
                Provider.of<ThemeProvider>(context, listen: false)
                    .changetheme(val);
              }),
          Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                      "https://i.pinimg.com/736x/95/b1/cc/95b1ccc7fd0a6ebb6ad4fbf16db54ec6.jpg",
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                color:
                    Colors.black.withOpacity(0.5), // Semi-transparent overlay
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 80.0, horizontal: 16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushNamed('homePage');
                      },
                      child: Card(
                        elevation: 8,
                        shadowColor: Colors.black.withOpacity(0.2),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Container(
                          alignment: Alignment.center,
                          height: 80,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.black.withOpacity(0.9),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.language,
                                size: 30,
                                color: Colors.white,
                              ),
                              SizedBox(width: 10),
                              Text(
                                "Hindi",
                                style: TextStyle(
                                  fontSize: 22,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushNamed('homePageEnglish');
                      },
                      child: Card(
                        elevation: 8,
                        shadowColor: Colors.black.withOpacity(0.2),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Container(
                          alignment: Alignment.center,
                          height: 80,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.black.withOpacity(0.9),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.language,
                                size: 30,
                                color: Colors.white,
                              ),
                              SizedBox(width: 10),
                              Text(
                                "English",
                                style: TextStyle(
                                  fontSize: 22,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
