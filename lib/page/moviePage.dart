import 'package:flutter/material.dart';
import 'package:line_icons/line_icon.dart';
import 'package:line_icons/line_icons.dart';

class moviePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          LineIcons.heart,
          size: 48.0,
          color: Colors.red,
        ),
        Text(
          "movie",
          style: TextStyle(color: Colors.red, fontSize: 50),
        )
      ],
    );
  }
}
