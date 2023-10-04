import 'package:flutter/material.dart';
import 'package:youtube/main.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 100.0,
        leading: Padding(
          padding: const EdgeInsets.only(left: 12.0),
          child: Image.asset('assets/images/ytub.jpg'),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.cast),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.notifications_outlined),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(
            iconSize: 40.0,
            icon: const CircleAvatar(
              backgroundImage: AssetImage("assets/images/saurabh.jpg"),
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: EdgeInsets.only(right: 12.0),
                child: Card(
                  child: Icon(
                    Icons.play_circle_fill_outlined,
                    size: 32,
                  ),
                ),
              ),
              Card(
                child: Text(
                  'All',
                  style: TextStyle(fontSize: 15),
                ),
              ),
              Card(
                child: Text(
                  'Music',
                  style: TextStyle(fontSize: 15),
                ),
              ),
              Card(
                child: Text(
                  'News',
                  style: TextStyle(fontSize: 15),
                ),
              ),
              Card(
                child: Text(
                  'Cricket',
                  style: TextStyle(fontSize: 15),
                ),
              ),
            ],
          ),
          content('assets/images/arj.jpg',
              "Bharat ki bhumi par Pak khiladiyon ka jabrdast wellcome  "),
          SizedBox(
            height: 10,
          ),
          content('assets/images/com.jpg',
              " Muslim bachhi se hui chhedkani to pulish hui gussa  "),
          content('assets/images/yt1.jpg',
              "Bharat ki bhumi par Pak khiladiyon ka jabrdast wellcome  "),
          content('assets/images/yt2.jpg',
              "Bharat ki bhumi par Pak khiladiyon ka jabrdast wellcome  ")
        ]),
      ),

      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home', // Label for Home
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.play_arrow),
            label: 'Shorts', // Label for Shorts
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.add_circle_outline,
              size: 40,
            ),
            label: '', // Label for Add (You can customize this)
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.subscriptions),
            label: 'Subscriptions', // Label for Subscriptions
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.video_library),
            label: 'Library', // Label for Library
          ),
        ],
      ),
      // Replace with your actual body widget
    );
  }
}
