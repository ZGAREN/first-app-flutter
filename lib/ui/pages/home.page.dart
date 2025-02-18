import 'package:flutter/material.dart';

import '../widgets/drawer.wigdet.dart';

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
          "Home Page",
          style: TextStyle(
            color: Colors.deepOrangeAccent,
            fontSize: 26,
          ),
        ),
      ),
    );
  }
}
