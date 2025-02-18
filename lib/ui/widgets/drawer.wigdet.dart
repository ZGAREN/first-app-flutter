import 'package:flutter/material.dart';

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
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, '/home');
            },
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
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, '/meteo');
            },
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
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, '/gallery');
            },
          ),
          Divider(
            height: 2,
            color: Colors.green,
          ),
          ListTile(
            title: Text(
              'Counter',
              style: TextStyle(fontSize: 22),
            ),
            leading: Icon(
              Icons.calculate_outlined,
              color: Colors.green,
            ),
            trailing: Icon(
              Icons.arrow_right,
              color: Colors.green,
            ),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, '/counter');
            },
          )
        ],
      ),
    );
  }
}
