import 'package:flutter/material.dart';

import 'bgimage.dart';


class ChangeNameCard extends StatelessWidget {
  const ChangeNameCard({
    Key key,
    @required this.myText,
    @required TextEditingController nameController,
  }) : _nameController = nameController, super(key: key);

  final String myText;
  final TextEditingController _nameController;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        BgImage(),
        SizedBox(
          height: 15,
        ),
        Text(
          "Cricket Association Nepal",
          style: TextStyle(
              fontFamily: toString(),
              fontSize: 20,
              fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 11,
        ),
        Text(
          myText,
          style: TextStyle(
              fontFamily: toString(),
              fontSize: 15,
              fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: TextField(
            controller: _nameController,
            keyboardType: TextInputType.emailAddress,
            // obscureText: true,
            decoration: InputDecoration(
                hintText: "Enter Your Email...",
                border: OutlineInputBorder(),
                labelText: "Email"),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: TextField(
            // controller: _nameController,
            keyboardType: TextInputType.text,
            obscureText: true,
            decoration: InputDecoration(
                hintText: "Your Password ",
                border: OutlineInputBorder(),
                labelText: "Password"),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: RaisedButton(
            onPressed: () {},
            child: const Text('Login', style: TextStyle(fontSize: 14)),
          ),
        ),
      ],
    );
  }
}
