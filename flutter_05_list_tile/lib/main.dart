import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> myList = List.generate(
      20,
      (index) => const ListTile(
        leading: CircleAvatar(
          child: Icon(Icons.person),
        ),
        title: Text('Haffsriyandra Yusuf'),
        subtitle: Text('kjsdkhask asdkhsakdhajd sahkdajsd'),
        trailing: Text('10.00 PM'),
      ),
    );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Latihan List Tile'),
        ),
        body: ListView(
          children: myList,
        ),
      ),
    );
  }
}
