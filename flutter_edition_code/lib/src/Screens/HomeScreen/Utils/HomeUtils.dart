import 'package:flutter/material.dart';

List<Widget> cardItem({String image, String text}) {
    return <Widget>[
      Image.asset(
        image,
        height: 60,
        width: 60,
      ),
      Text(text)
    ];
  }
