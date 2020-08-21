//import 'dart:html';

// import 'package:awesome_start/bgimage.dart';
import 'package:awesome_start/pages/home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// import 'change_name_card.dart';
// import 'drawer.dart';
// import 'bgimage.dart';

//import 'package:flutter/cuertino.dart'';
void main() {
  runApp(MaterialApp(
    title: "Flutter Awesome App",
    home: HomePage(),
    theme: ThemeData(primarySwatch: Colors.purple),
  ));
}

