import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // List<Widget> myList = [
    //   Container(
    //     height: 300,
    //     width: 300,
    //     color: Colors.green,
    //   ),
    //   Container(
    //     height: 300,
    //     width: 300,
    //     color: Colors.red,
    //   ),
    //   Container(
    //     height: 300,
    //     width: 300,
    //     color: Colors.blue,
    //   ),
    //   Container(
    //     height: 300,
    //     width: 300,
    //     color: Colors.amber,
    //   ),
    // ];
    // List<Color> myColor = [
    //   Colors.green,
    //   Colors.red,
    //   Colors.blue,
    //   Colors.amber,
    // ];
    List<Widget> myList = List.generate(
      100,
      (index) => Text(
        "${index + 1}",
        style: TextStyle(
          fontSize: 20 +
              double.parse(
                index.toString(),
              ),
        ),
      ),
    );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Latihan List View'),
        ),
        // ? LIST VIEW DEFAULT
        body: ListView(
          children: myList,
        ),

        // ? LIST VIEW BUILDER
        // body: ListView.builder(
        //   itemCount: myColor.length,
        //   itemBuilder: (context, index) {
        //     return Container(
        //       height: 300,
        //       width: 300,
        //       color: myColor[index],
        //     );
        //   },
        // ),

        // ? LIST VIEW SEPARATED
        // body: ListView.separated(
        //   separatorBuilder: (context, index) {
        //     return const Divider(
        //       height: 20,
        //       color: Colors.black,
        //       thickness: 2,
        //       indent: 5,
        //       endIndent: 15,
        //     );
        //   },
        //   itemCount: myColor.length,
        //   itemBuilder: (context, index) {
        //     return Container(
        //       height: 300,
        //       width: 300,
        //       color: myColor[index],
        //     );
        //   },
        // ),
      ),
    );
  }
}
