import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> myList = [
      {
        "name": "Haffsriyandra Yusuf",
        "age": 26,
        "favColor": ["Black", "Red", "Amber", "Black", "Red", "Amber"]
      },
      {
        "name": "Dian Yulianingsih",
        "age": 25,
        "favColor": ["Black", "Amber", "Blue"]
      },
      {
        "name": "Haffsriyandra Yusuf",
        "age": 26,
        "favColor": ["Black", "Red", "Amber", "Black", "Red", "Amber"]
      },
      {
        "name": "Dian Yulianingsih",
        "age": 25,
        "favColor": ["Black", "Amber", "Blue"]
      },
      {
        "name": "Haffsriyandra Yusuf",
        "age": 26,
        "favColor": ["Black", "Red", "Amber", "Black", "Red", "Amber"]
      },
      {
        "name": "Dian Yulianingsih",
        "age": 25,
        "favColor": ["Black", "Amber", "Blue"]
      },
    ];
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Latihan MApping List'),
        ),
        body: ListView(
          children: myList.map((data) {
            List myFavColor = data['favColor'];
            return Card(
              margin: EdgeInsets.all(20),
              color: Colors.black.withOpacity(0.2),
              child: Container(
                margin: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(),
                        SizedBox(
                          width: 20,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Name : ${data['name']}'),
                            Text('Age : ${data['age']}'),
                          ],
                        )
                      ],
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: myFavColor.map((color) {
                          return Container(
                            color: Colors.amber,
                            margin: EdgeInsets.symmetric(
                              vertical: 15,
                              horizontal: 8,
                            ),
                            padding: EdgeInsets.all(10),
                            child: Text(color),
                          );
                        }).toList(),
                      ),
                    ),
                  ],
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
