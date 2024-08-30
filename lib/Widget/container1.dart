import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Container1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Text(
            "Up Coming Movie",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Padding(
            padding: const EdgeInsets.all(4.0),
            child: Row(
              children: [
                _items("assets/img/me4.jpeg", "Fighter", "8 star 75.4K votes"),
                _items("assets/img/oblivion.jpg", "Rock", "75.4K votes"),
                _items("assets/img/theboy.jpg", "Shautaan", "75.4K votes"),
                _items("assets/img/who.jpeg", "James", "75.4K votes"),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(4.0),
          child: Text(
            "Recommended Movie",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Padding(
            padding: const EdgeInsets.all(4.0),
            child: Row(
              children: [
                _items("assets/img/me4.jpeg", "Fighter", "8 star 75.4K votes"),
                _items("assets/img/oblivion.jpg", "Rock", "75.4K votes"),
                _items("assets/img/theboy.jpg", "Shautaan", "75.4K votes"),
                _items("assets/img/who.jpeg", "James", "75.4K votes"),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

Widget _items(String ImgPath, String txt, String like) {
  return Container(
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(20),
    ),
    margin: EdgeInsets.all(4),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(3.0),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                ImgPath,
                height: 200,
                width: 152,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Container(
          width: 100,
          height: 20,
          decoration: BoxDecoration(
            color: Colors.lightBlue[50],
            borderRadius: BorderRadius.circular(20),
          ),
          child: Text(
            like,
            style: TextStyle(color: Colors.black),
          ),
        ),
        Text(
          txt,
          style: TextStyle(
            fontSize: 20,
          ),
        ),
      ],
    ),
  );
}
