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
          leading: Container(
            color: Colors.amber,
          ),
          leadingWidth: 100,
          title: Text('APPBAR'),
          actions: [
            Container(
              width: 50,
              color: Colors.red,
            ),
            Container(
              width: 50,
              color: Colors.black,
            ),
          ],
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(100),
            child: Container(
              width: 50,
              height: 100,
              color: Colors.black,
            ),
          ),
          flexibleSpace: Container(
            height: 100,
            color: Colors.green,
          ),
          centerTitle: true,
        ),
        body: Center(
          child: Text(
            'Latihan AppBar Widget',
            style: TextStyle(
              fontSize: 30,
            ),
          ),
        ),
      ),
    );
  }
}
