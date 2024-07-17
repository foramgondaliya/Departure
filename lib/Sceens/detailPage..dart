import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    Map data = ModalRoute.of(context)!.settings.arguments as Map;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Detail Page",
          style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Card(
                elevation: 3,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Adhyay Sankhya : ",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w500),
                          ),
                          Text(
                            "${data['verses_count']}",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Adhyay Ka Naam : ",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w500),
                          ),
                          Text(
                            "${data['name']}",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 30),
              Center(
                child: Container(
                  height: 260,
                  width: 420,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage("${data['image_name']}"),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30),
              Card(
                elevation: 3,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    "${data['chapter_summary_hindi']}",
                    style: TextStyle(fontSize: 20),
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
