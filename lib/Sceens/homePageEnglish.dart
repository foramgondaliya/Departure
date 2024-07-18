import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePageEnglish extends StatefulWidget {
  const HomePageEnglish({super.key});

  @override
  State<HomePageEnglish> createState() => _HomePageEnglishState();
}

class _HomePageEnglishState extends State<HomePageEnglish> {
  late Future<String> jsonData;

  void loadjson() {
    jsonData = rootBundle.loadString("assets/JSON/data.json");
  }

  @override
  void initState() {
    super.initState();
    loadjson();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "HomePage",
          style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).pushNamed(
                'favouritePage',
              );
            },
            icon: Icon(
              Icons.favorite,
              size: 30,
            ),
          ),
        ],
      ),
      body: FutureBuilder(
        future: jsonData,
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return Center(
              child: Text(
                "ERROR: ${snapshot.error}",
                style: TextStyle(color: Colors.red, fontSize: 18),
              ),
            );
          } else if (snapshot.hasData) {
            String? data = snapshot.data;
            List<dynamic> allData = (data == null) ? [] : jsonDecode(data);

            if (data == null) {
              return Center(
                child: Text(
                  "No Data Available...",
                  style: TextStyle(fontSize: 20),
                ),
              );
            } else {
              return ListView.separated(
                padding: const EdgeInsets.all(8.0),
                itemCount: allData.length,
                separatorBuilder: (context, i) => Divider(),
                itemBuilder: (context, i) {
                  return Card(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: ListTile(
                      contentPadding: EdgeInsets.all(10),
                      onTap: () {
                        Navigator.of(context).pushNamed('detailPageEnglish',
                            arguments: allData[i]);
                      },
                      leading: CircleAvatar(
                        backgroundColor: Colors.blue.shade800,
                        child: Text(
                          "${allData[i]['chapter_number']}",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      title: Text(
                        "${allData[i]['name_translation']}",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text("${allData[i]['name_meaning']}"),
                      trailing: Icon(Icons.arrow_forward_ios,
                          color: Colors.blue.shade800),
                    ),
                  );
                },
              );
            }
          }
          return Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}
