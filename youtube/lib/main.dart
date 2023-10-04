import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:youtube/home.dart';

void main() {
  runApp(const MyApp());
}

Widget content(String images, String text) {
  return Column(
    children: [
      Stack(
        children: [
          Image.asset(images),
          Positioned.fill(
              bottom: 10,
              right: 10,
              child: Align(
                alignment: Alignment.bottomRight,
                child: Container(
                    child: Text(
                  '25:11',
                  style: TextStyle(
                      backgroundColor: Colors.black, color: Colors.white),
                )),
              )),
          SizedBox(
            height: 10,
          )
        ],
      ),
      Container(
        child: ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage('assets/images/saurabh.jpg'),
          ),
          title: Text(text),
          subtitle: Text('Champ . 584k views. 1 day ago'),
          trailing: Icon(Icons.more_vert),
        ),
      )
    ],
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        brightness: Brightness.dark,
      ),
      home: HomeScreen(),
    );
  }
}
