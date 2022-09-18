import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  List animalImage = [
    "images/1.webp",
    "images/2.jpg",
    "images/3_1.webp",
    "images/5_1.webp",
    "images/4.jpg"
  ];
  List animalName = ["lion", "tiger", "eagl", "fox","bear"];
  List animalType = [
    "Predatory",
    "Predatory",
    "Predatory",
    "Predatory",
    "Predatory",
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Container(color: Colors.amber,
          child: ListView(children: [
            Container(
              child: ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: animalImage.length,
                itemBuilder: (BuildContext context, int i) {
                  return Container(
                    child: ListTile(trailing: Icon(Icons.person),
                      title: Text(
                        "${animalName[i]}",
                        style: TextStyle(fontSize: 20),
                      ),
                      subtitle: Text("${animalType[i]}"),
                      leading: Image(image: AssetImage("${animalImage[i]}")),
                    ),
                  );
                },
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
