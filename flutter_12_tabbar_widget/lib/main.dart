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
      home: DefaultTabController(
        length: 3,
        initialIndex: 0,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('TabBar'),
            bottom: const TabBar(
              labelColor: Colors.black,
              unselectedLabelColor: Colors.white,
              labelStyle: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
              unselectedLabelStyle: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.normal,
              ),
              // indicatorPadding: EdgeInsets.all(5),
              // indicatorColor: Colors.black,
              // indicatorSize: TabBarIndicatorSize.label,
              // indicatorWeight: 5.0,
              indicator: BoxDecoration(
                color: Colors.amber,
                // borderRadius: BorderRadius.circular(5),
                border: Border(
                  bottom: BorderSide(
                    color: Colors.black,
                    width: 5,
                  ),
                ),
              ),
              tabs: [
                Tab(
                  text: 'Tab 1',
                  icon: Icon(Icons.access_alarm_sharp),
                ),
                Tab(
                  text: 'Tab 2',
                  icon: Icon(Icons.bluetooth_sharp),
                ),
                Tab(
                  text: 'Tab 3',
                  icon: Icon(Icons.radio),
                ),
              ],
            ),
          ),
          body: const TabBarView(
            children: [
              Center(
                child: Text(
                  'Tab 1',
                  style: TextStyle(fontSize: 35),
                ),
              ),
              Center(
                child: Text(
                  'Tab 2',
                  style: TextStyle(fontSize: 35),
                ),
              ),
              Center(
                child: Text(
                  'Tab 3',
                  style: TextStyle(fontSize: 35),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
