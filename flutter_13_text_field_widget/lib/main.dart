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
              // autocorrect: true,
              // autofocus: true,
              // enableSuggestions: true,
              // enableInteractiveSelection: true,
              // enabled: false,
              // obscureText: true,
              // obscuringCharacter: '#',
              // keyboardType: TextInputType.text,
              // readOnly: true,

              // ! DECORATION TEXTFIELD
              textAlign: TextAlign.start,
              textAlignVertical: TextAlignVertical.top,
              textCapitalization: TextCapitalization.characters,
              style: TextStyle(
                color: Colors.red,
                fontSize: 24,
              ),
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.amber,
                icon: Icon(
                  Icons.people,
                  size: 35,
                  color: Colors.red,
                ),
                border: OutlineInputBorder(),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.red,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.blue,
                  ),
                ),
                hintText: 'Input Your Name',
                hintStyle: TextStyle(
                  color: Colors.red,
                  fontSize: 24,
                ),
                labelText: 'Full Name',
                labelStyle: TextStyle(
                  color: Colors.red,
                  fontSize: 24,
                ),
                prefixText: 'Name : ',
                prefixIcon: Icon(
                  Icons.person_add,
                  size: 35,
                ),
                prefixStyle: TextStyle(
                  color: Colors.red,
                  fontSize: 24,
                ),
                prefixIconColor: Colors.black,
                suffixIcon: IconButton(
                  icon: Icon(Icons.remove_red_eye),
                  onPressed: null,
                ),
                suffixIconColor: Colors.red,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
