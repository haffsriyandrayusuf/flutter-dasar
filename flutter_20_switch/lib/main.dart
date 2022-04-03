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
      home: MyHome(),
    );
  }
}

class MyHome extends StatefulWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  bool statusSwitch = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Switch'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Switch(
              activeColor: Colors.green,
              activeTrackColor: Colors.red,
              inactiveThumbColor: Colors.amber,
              inactiveTrackColor: Colors.indigo,
              value: statusSwitch,
              onChanged: (value) {
                setState(() {
                  statusSwitch = !statusSwitch;
                });
                print(statusSwitch);
              },
            ),
            Text(
              (statusSwitch == true) ? "Switch On" : "Switch Off",
              style: TextStyle(
                fontSize: 35,
              ),
            )
          ],
        ),
      ),
    );
  }
}
