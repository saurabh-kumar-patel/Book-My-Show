import 'package:bookyour_show/page/Profile_Page.dart';
import 'package:bookyour_show/page/eventsPage.dart';
import 'package:bookyour_show/page/moviePage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'homePage.dart';

class fontpage extends StatefulWidget {
  @override
  State<fontpage> createState() => _fontpageState();
}

class _fontpageState extends State<fontpage> {
  int Index = 0;
  final List<Widget> _Page = [
    homePage(),
    eventsPage(),
    moviePage(),
    profile_Page()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _Page[Index],
      bottomNavigationBar: BottomNavigationBar(
        elevation: 20,
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: ' Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.event_available),
            label: "Event",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.movie),
            label: "Movies",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
            ),
            label: "profile",
          ),
        ],
        currentIndex: Index,
        onTap: (index) {
          setState(() {
            Index = index;
          });
        },
      ),
    );
  }
}
