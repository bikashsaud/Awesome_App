import 'package:flutter/material.dart';
//import 'package:flutter/cuertino.dart'';
void main() {
  runApp(MaterialApp(
    title: "Flutter Awesome App",
    home: HomePage()
  ));
}

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Bikash App"),
      ),
      body: Container(
        child: Center(child: Text("Hi Visitor")),
      ),
    );
  }
}