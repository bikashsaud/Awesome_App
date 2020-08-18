//import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//import 'package:flutter/cuertino.dart'';
void main() {
  runApp(MaterialApp(title: "Flutter Awesome App", home: HomePage()));
}
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Bikash App"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),

          child: Align(
            alignment: Alignment.center,
            child: Container(

              color: Colors.lightBlue,
              width: 150,
              height: 350,

              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,

                children: <Widget>[

                  Container(
                    padding: const EdgeInsets.only(top: 40),
                    width: 100,
                    height: 100,

                    color: Colors.green,
//                    padding: EdgeInsets.all(20),
                    child: Text(
                      "Green Light",
                      textAlign: TextAlign.center,
                    ),

                  ),
                  Container(
                    padding: const EdgeInsets.only(top:20),
                    width: 100,
                    height: 100,
                    color: Colors.yellow,
                    child: Text(
                      "Yellow Light",
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(top:20),
                    width: 100,
                    height: 100,
                    color: Colors.red,
                    child: Text(
                      "Red Light",
                      textAlign: TextAlign.center,
                    ),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
