import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
//              DrawerHeader(
//                child: Text(
//                  "Hi, I`m Bikash",
//                style: TextStyle(color: Colors.white),
//                ),
//                decoration: BoxDecoration(
//                    color: Colors.purple
//                ),

//              ),
          UserAccountsDrawerHeader(
              accountName: Text("Bikash Saud"),
              accountEmail: Text("saudbikash514@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://scontent.fktm7-1.fna.fbcdn.net/v/t1.0-9/32234262_386529148494059_2806200166552436736_n.jpg?_nc_cat=106&_nc_sid=174925&_nc_ohc=ihQik6wWL0wAX8AnL7e&_nc_ht=scontent.fktm7-1.fna&oh=d01825a3858ccf3ec6e54db2f2c73fa5&oe=5F65C1D1"),
              )),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("ACCOUNT"),
            subtitle: Text("Personal"),
            trailing: Icon(Icons.edit),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("LIVE SCORE"),
            subtitle: Text("Live"),
            trailing: Icon(Icons.edit),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("SCHEDULE"),
            subtitle: Text("Cricket Schedule"),
            trailing: Icon(Icons.edit),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("NEWS"),
            subtitle: Text("Cricket News"),
            trailing: Icon(Icons.edit),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("SERIES"),
            subtitle: Text("Current Series"),
            trailing: Icon(Icons.edit),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("TEAMS"),
            subtitle: Text("All Teams"),
            trailing: Icon(Icons.edit),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("VIDEOS"),
            subtitle: Text("Cricket Videos"),
            trailing: Icon(Icons.edit),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("RANKING"),
            subtitle: Text("Current Ranking"),
            trailing: Icon(Icons.edit),
          ),
        ],
      ),
    );
  }
}
