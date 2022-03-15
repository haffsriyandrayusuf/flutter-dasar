import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final List<Container> myList = List.generate(
      200,
      (index) {
        return Container(
          /* 
            height: 50, 
            width: 150, 
          */
          child: Center(
            child: Text(
              '${index + 1}',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
          ),
          color: Color.fromARGB(
            255,
            Random().nextInt(256),
            Random().nextInt(256),
            Random().nextInt(256),
          ),
        );
      },
    );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Latihan GridView Widget'),
        ),
        // ! GRIDVIEW DEFAULT
        // body: GridView(
        //   padding: EdgeInsets.all(10),
        //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        //     crossAxisCount: 3,
        //     crossAxisSpacing: 10,
        //     mainAxisSpacing: 10,
        //     childAspectRatio: 3 / 3,
        //   ),
        //   children: myList,
        // ),

        // !GRIDVIEW COUNT
        // body: GridView.count(
        //   padding: EdgeInsets.all(10),
        //   crossAxisCount: 3,
        //   crossAxisSpacing: 10,
        //   mainAxisSpacing: 10,
        //   childAspectRatio: 3 / 3,
        //   children: myList,
        // ),

        // ! GRIDVIEW BUILDER
        // body: GridView.builder(
        //   padding: EdgeInsets.all(5.0),
        //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        //     crossAxisCount: 3,
        //     crossAxisSpacing: 5,
        //     mainAxisSpacing: 5,
        //     childAspectRatio: 3 / 3,
        //   ),
        //   // itemCount: 100,
        //   itemBuilder: (context, index) {
        //     return Container(
        //       child: Center(
        //         child: Text(
        //           'Data ${index + 1}',
        //           style: TextStyle(
        //             color: Colors.white,
        //             fontSize: 25,
        //           ),
        //         ),
        //       ),
        //       color: Color.fromARGB(
        //         255,
        //         Random().nextInt(256),
        //         Random().nextInt(256),
        //         Random().nextInt(256),
        //       ),
        //     );
        //   },
        // ),

        // ! GRIDVIEW EXTENT
        body: GridView.extent(
          maxCrossAxisExtent: 100,
          scrollDirection: Axis.horizontal,
          crossAxisSpacing: 5,
          mainAxisSpacing: 5,
          reverse: true,
          children: myList,
        ),
      ),
    );
  }
}
