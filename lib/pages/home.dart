import 'package:flutter/material.dart';
// import 'package:awesomeapp/drawer.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
// import '../change_name_card.dart';
import '../drawer.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // TextEditingController _nameController = TextEditingController();
  var myText = "Login";
  var url = "https://jsonplaceholder.typicode.com/photos";
  var data;

  @override
  void initState() {
    super.initState();
    getData();
  }

  getData() async {
    var res = await http.get(url);
    data = jsonDecode(res.body);
    print(res.body);
    setState(() {});
    print(data);
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text("नेपाली क्रिकेट"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(5.0),
        child: data != null
            ? ListView.builder(
                // for grid view
                // gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                //     crossAxisCount: 3),
                itemBuilder: (context, index) {
                  return ListTile(
                    subtitle: Text("ID: ${data[index]["id"]}"),
                    title: Text(data[index]["title"]),
                    leading: Image.network(data[index]["url"]),
                  );
                },
                itemCount: data.length,
              )
            : Center(
                child: CircularProgressIndicator(),
              ),
      ),
      drawer: MyDrawer(),
//        floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
//        yasma actions lekhne
          // myText = _nameController.text;
          // setState(() {});
        },
        child: Icon(Icons.refresh),
      ),

//          -------Start of Chapter 2 ----------
//          padding: const EdgeInsets.all(8.0),

//          child: Align(
//            alignment: Alignment.center,
//            child: Container(
//
//              color: Colors.lightBlue,
//              width: 150,
//              height: 350,
//
//              child: Column(
//                mainAxisAlignment: MainAxisAlignment.spaceAround,
//                crossAxisAlignment: CrossAxisAlignment.center,
//
//                children: <Widget>[
//
//                  Container(
//                    padding: const EdgeInsets.only(top: 40),
//                    width: 100,
//                    height: 100,
//
//                    color: Colors.green,
////                    padding: EdgeInsets.all(20),
//                    child: Text(
//                      "Green Light",
//                      textAlign: TextAlign.center,
//                    ),
//
//                  ),
//                  Container(
//                    padding: const EdgeInsets.only(top:20),
//                    width: 100,
//                    height: 100,
//                    color: Colors.yellow,
//                    child: Text(
//                      "Yellow Light",
//                      textAlign: TextAlign.center,
//                    ),
//                  ),
//                  Container(
//                    padding: const EdgeInsets.only(top:20),
//                    width: 100,
//                    height: 100,
//                    color: Colors.red,
//                    child: Text(
//                      "Red Light",
//                      textAlign: TextAlign.center,
//                    ),
//                  )
//                ],
//              ),
//            ),
//          ),
//        -------------End Of Chapter 2---------
    );
  }
}
