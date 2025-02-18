import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
        primaryColor: Colors.deepOrangeAccent,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // une page qui contient element scafulld se compose AppBar et body
    return Scaffold(
      drawer: MyDrawer(),
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Text('Home '),
      ),
      body: Center(
        child: Text(
          " *** Home Page *** ",
          style: TextStyle(
            color: Colors.deepOrangeAccent,
            fontSize: 26,
          ),
        ),
      ),
    );
  }
}

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
                gradient:
                    LinearGradient(colors: [Colors.white, Colors.tealAccent])),
            child: Center(
              child: CircleAvatar(
                backgroundImage: AssetImage("images/logo.png"),
                radius: 40,
              ),
            ),
          ),
          ListTile(
            title: Text(
              'Home',
              style: TextStyle(fontSize: 22),
            ),
            leading: Icon(
              Icons.home,
              color: Colors.green,
            ),
            trailing: Icon(
              Icons.arrow_right,
              color: Colors.green,
            ),
            onTap: () {},
          ),
          Divider(
            height: 2,
            color: Colors.green,
          ),
          ListTile(
            title: Text(
              'Meteo',
              style: TextStyle(fontSize: 22),
            ),
            leading: Icon(
              Icons.cloudy_snowing,
              color: Colors.green,
            ),
            trailing: Icon(
              Icons.arrow_right,
              color: Colors.green,
            ),
            onTap: () {},
          ),
          Divider(
            height: 2,
            color: Colors.green,
          ),
          ListTile(
            title: Text(
              'Gallery',
              style: TextStyle(fontSize: 22),
            ),
            leading: Icon(
              Icons.browse_gallery,
              color: Colors.green,
            ),
            trailing: Icon(
              Icons.arrow_right,
              color: Colors.green,
            ),
            onTap: () {},
          )
        ],
      ),
    );
  }
}
