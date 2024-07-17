import 'package:flutter/material.dart';

class Language extends StatefulWidget {
  const Language({super.key});

  @override
  State<Language> createState() => _LanguageState();
}

class _LanguageState extends State<Language> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Select Your Language",
          style: TextStyle(
            fontSize: 26,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          ///color: Colors.blue,
          image: DecorationImage(
            // fit: BoxFit.cover,
            image: NetworkImage(
              "https://i.pinimg.com/474x/47/31/2e/47312e74fce7dad4c2ab78a017d72632.jpg",
            ),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pushNamed('homePage');
                },
                child: Card(
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Container(
                    alignment: Alignment.center,
                    height: 80,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      gradient: LinearGradient(
                        colors: [Colors.teal, Colors.tealAccent],
                      ),
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
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Container(
                    alignment: Alignment.center,
                    height: 80,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      gradient: LinearGradient(
                        colors: [Colors.teal, Colors.tealAccent],
                      ),
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
      ),
    );
  }
}
