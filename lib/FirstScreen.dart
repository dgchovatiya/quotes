import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'QuoteList.dart';

class Gridview1 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return GetgridList();
  }
}

class GetgridList extends State<Gridview1> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: GridView.count(
      primary: false,
      padding: const EdgeInsets.all(7),
      crossAxisSpacing: 8,
      mainAxisSpacing: 8,
      crossAxisCount: 2,
      children: <Widget>[
        Container(
            height: 200,
            width: 150,
            child: Container(
                height: double.infinity,
                width: double.infinity,
                child: Setcard('Images/Alone.jpeg', "Alone"))),
        Container(
            height: 200, width: 150, child: Setcard('Images/joy.jpeg', "Joy")),
        Container(
            height: 200,
            width: 150,
            child: Setcard('Images/Birthday.jpeg', "Birthday")),
        Container(
            height: 200,
            width: 150,
            child: Setcard('Images/love.jpeg', "Love")),
        Container(
            height: 200,
            width: 150,
            child: Setcard('Images/Funny.jpeg', "Funny")),
        Container(
            height: 200,
            width: 150,
            child: Setcard('Images/cool.jpeg', "Cool")),
        Container(
            height: 200,
            width: 150,
            child: Setcard('Images/Sweet.jpeg', "Sweet")),
        Container(
            height: 200,
            width: 150,
            child:Setcard('Images/Motivation.jpeg', "Motivation")),

      ],
    ));
  }

  Widget Setcard(String image, String name) {
    return InkWell(
        onTap: () {
          debugPrint(name);
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return Quotelist(name);
          }));
        },
        child: Card(
            elevation: 6.0,
            semanticContainer: true,
            clipBehavior: Clip.antiAliasWithSaveLayer,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0)),
            child: Stack(
              fit: StackFit.loose,
              children: <Widget>[
                Container(
                  height: double.infinity,
                  width: double.infinity,
                  child: Image.asset(
                    image,
                    fit: BoxFit.fill,
                  ),
                ),
                Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      height: 48,
                      width: 250,
                      color: Colors.black.withOpacity(0.45),
                    )),
                Positioned(
                    bottom: 10,
                    left: 60,
                    child: Text(
                      name,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontFamily: 'Myfonts',
                      ),
                    )),
              ],
            )));
  }
}
