import 'package:flutter/material.dart';
import 'package:faker/faker.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var faker = Faker();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Latihan Extract Widget'),
        ),
        // body: ListView(
        //   children: [
        //     ChatItem(
        //       imageUrl: 'https://picsum.photos/id/543/200/300?',
        //       title: faker.person.name(),
        //       subTitle: faker.lorem.sentence(),
        //       time: faker.date.time(),
        //     ),
        //     ChatItem(
        //       imageUrl: 'https://picsum.photos/id/231/200/300?',
        //       title: faker.person.name(),
        //       subTitle: faker.lorem.sentence(),
        //       time: faker.date.time(),
        //     ),
        //     ChatItem(
        //       imageUrl: 'https://picsum.photos/id/324/200/300?',
        //       title: faker.person.name(),
        //       subTitle: faker.lorem.sentence(),
        //       time: faker.date.time(),
        //     ),
        //   ],
        // ),
        body: ListView.builder(
          itemCount: 100,
          itemBuilder: (context, index) {
            return ChatItem(
              imageUrl: 'https://picsum.photos/id/$index/200/300?',
              title: faker.person.name(),
              subTitle: faker.lorem.sentence(),
              time: faker.date.time(),
            );
          },
        ),
      ),
    );
  }
}

class ChatItem extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String subTitle;
  final String time;
  const ChatItem(
      {Key? key,
      required this.imageUrl,
      required this.title,
      required this.subTitle,
      required this.time})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: NetworkImage(imageUrl),
      ),
      title: Text(title),
      subtitle: Text(subTitle),
      trailing: Text(time),
    );
  }
}
