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
          title: const Text('Latihan Image Widget'),
        ),
        body: Center(
          child: Container(
            height: 500,
            width: 350,
            color: Colors.amber,
            // child: const Image(
            //   // image: NetworkImage('https://picsum.photos/200/300'),
            //   image: AssetImage('assets/natalie.jpg'),
            //   fit: BoxFit.cover,
            // ),
            child: Image.asset(
              'assets/natalie.jpg',
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
