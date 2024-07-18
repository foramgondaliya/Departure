import 'package:bhagwatgita/Provider/themeProvider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LanguagePage extends StatefulWidget {
  const LanguagePage({Key? key}) : super(key: key);

  @override
  State<LanguagePage> createState() => _LanguagePageState();
}

class _LanguagePageState extends State<LanguagePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            //color: Colors.amber,
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(
                "https://i.pinimg.com/736x/95/b1/cc/95b1ccc7fd0a6ebb6ad4fbf16db54ec6.jpg",
              ),
            ),
          ),
          child: Stack(
            children: [
              Positioned(
                top: 40,
                right: 20,
                child: Switch(
                  value: Provider.of<ThemeProvider>(context).istap,
                  onChanged: (val) {
                    Provider.of<ThemeProvider>(context, listen: false)
                        .changetheme(val);
                  },
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Card(
                            color: Colors.white.withOpacity(0.4),
                            child: GestureDetector(
                              onTap: () {
                                Navigator.of(context).pushNamed('homePage');
                              },
                              child: Container(
                                alignment: Alignment.center,
                                height: 65,
                                width: 400,
                                child: Text(
                                  "Hindi",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                          Card(
                            color: Colors.white.withOpacity(0.4),
                            child: GestureDetector(
                              onTap: () {
                                Navigator.of(context)
                                    .pushNamed('homePageEnglish');
                              },
                              child: Container(
                                alignment: Alignment.center,
                                height: 65,
                                width: 400,
                                child: Text(
                                  "English",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
