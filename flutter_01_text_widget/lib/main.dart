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
          title: const Text('Latihan Text Widget'),
        ),
        body: const Center(
          child: Text(
            'kkhhdkjsahdkjashdkjashdkahdiugbdkjabjlsdjfdjkflfjldkjflkjflkadsjflksjflkdjflkajdflksdjflkjdfljdflkdfdguiagdiasgudasdalkdjalsdjhkashdkasdjksahdksajhdkjsdhkjhdkhjsadkj',
            textAlign: TextAlign.justify,
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              backgroundColor: Colors.blueAccent,
              color: Colors.black,
              fontSize: 30,
              fontWeight: FontWeight.bold,
              letterSpacing: 10,
              decoration: TextDecoration.lineThrough,
              decorationStyle: TextDecorationStyle.wavy,
              decorationThickness: 3,
              decorationColor: Colors.orange,
              fontStyle: FontStyle.italic,
            ),
          ),
        ),
      ),
    );
  }
}
