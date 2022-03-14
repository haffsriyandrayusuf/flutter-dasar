import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Latihan Layout Widget'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              color: Colors.blueGrey,
              height: 250,
              width: 450,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    height: 50,
                    width: 200,
                    color: Colors.amberAccent,
                  ),
                  Container(
                    height: 50,
                    width: 150,
                    color: Colors.greenAccent,
                  ),
                  Container(
                    height: 50,
                    width: 100,
                    color: Colors.blueAccent,
                  ),
                ],
              ),
            ),
            Container(
              color: Colors.blueGrey,
              height: 200,
              width: 450,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 50,
                    width: 70,
                    color: Colors.cyanAccent,
                  ),
                  Container(
                    height: 50,
                    width: 70,
                    color: Colors.redAccent,
                  ),
                  Container(
                    height: 50,
                    width: 70,
                    color: Colors.lightGreen,
                  ),
                ],
              ),
            ),
            Container(
              color: Colors.blueGrey,
              height: 200,
              width: 450,
              child: Stack(
                alignment: Alignment.bottomLeft,
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    color: Colors.cyanAccent,
                  ),
                  Container(
                    height: 75,
                    width: 75,
                    color: Colors.redAccent,
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    color: Colors.lightGreen,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
