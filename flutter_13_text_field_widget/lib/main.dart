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
          title: const Text('Latihan Text Field'),
        ),
        body: const Center(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: TextField(
              // ! FEATURES TEXTFIELD
              autocorrect: true,
              autofocus: true,
              enableSuggestions: true,
              enableInteractiveSelection: true,
              enabled: false,
              obscureText: true,
              obscuringCharacter: '#',
              keyboardType: TextInputType.text,
              readOnly: true,
            ),
          ),
        ),
      ),
    );
  }
}
