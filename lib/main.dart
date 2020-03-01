import 'package:flutter/material.dart';

import 'FirstScreen.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Quotes',
    home: Scaffold(
      appBar: AppBar(
        title: Text('Quotes',
        style: TextStyle(
          fontFamily: 'Myfonts',
          fontSize: 25,
        ),),
        backgroundColor: Color(0xFFEAA4A4),
      ),
      body: Gridview1(),
      backgroundColor: Color(0xFFFEDBD0),
    ),
  ));
}
