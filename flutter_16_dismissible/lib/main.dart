import 'package:faker/faker.dart';
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

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Faker faker = Faker();
    return Scaffold(
      appBar: AppBar(
        title: Text('Dismissible'),
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(8),
        itemCount: 100,
        itemBuilder: (context, index) {
          return Dismissible(
            background: Container(
              color: Colors.blue,
              child: Icon(
                Icons.archive,
                size: 25,
              ),
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(left: 10),
            ),
            secondaryBackground: Container(
              color: Colors.red,
              child: Icon(
                Icons.delete,
                size: 25,
              ),
              alignment: Alignment.centerRight,
              padding: EdgeInsets.only(right: 10),
            ),
            key: Key(index.toString()),
            // direction: DismissDirection.endToStart
            child: ListTile(
              leading: CircleAvatar(
                child: Center(
                  child: Text('${index + 1}'),
                ),
              ),
              title: Text(faker.person.name()),
              subtitle: Text(faker.lorem.sentence()),
            ),
            confirmDismiss: (direction) {
              return showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: Text('Confirm'),
                    content: Text('Are you sure delete this message?'),
                    actions: [
                      ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).pop(false);
                        },
                        child: Text('No'),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).pop(true);
                        },
                        child: Text('Yes'),
                      )
                    ],
                  );
                },
              );
            },
            onDismissed: (direction) {
              print('DISMISSED');
              if (direction == DismissDirection.endToStart) {
                print('Message was delete');
              } else {
                print('Message was archive');
              }
            },
          );
        },
      ),
    );
  }
}
