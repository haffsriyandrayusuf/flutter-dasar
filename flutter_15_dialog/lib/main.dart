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
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String inputData = 'Belum Ada Input';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Latihan Dialog'),
      ),
      body: Center(
        child: Text(
          inputData,
          style: TextStyle(
            fontSize: 35,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('Telah di Klik');
          showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                title: Text('CONFIRM'),
                content: Text('Yakin hapus item ini?'),
                actions: [
                  ElevatedButton.icon(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.red),
                    ),
                    onPressed: () {
                      print('Klik No');
                      setState(() {
                        inputData = 'FALSE';
                      });
                      Navigator.of(context).pop('false');
                    },
                    icon: Icon(Icons.thumb_down),
                    label: Text('No'),
                  ),
                  ElevatedButton.icon(
                    onPressed: () {
                      print('Klik Yes');
                      setState(() {
                        inputData = 'TRUE';
                      });
                      Navigator.of(context).pop('true');
                    },
                    icon: Icon(Icons.thumb_up),
                    label: Text('Yes'),
                  ),
                  TextButton.icon(
                    onPressed: () {
                      print('Klik Bebas');
                      setState(() {
                        inputData = 'FREE';
                      });
                      Navigator.of(context).pop('free');
                    },
                    icon: Icon(Icons.check),
                    label: Text('Free'),
                  )
                ],
              );
            },
          ).then((value) => print(value));
        },
        child: Icon(Icons.delete),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
