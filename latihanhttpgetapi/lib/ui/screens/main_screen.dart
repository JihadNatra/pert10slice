// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:latihanhttpgetapi/ui/pages/home_pages.dart';
import 'create_user_scree.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);
  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          AppBar(title: Text("http", style: TextStyle(color: Colors.black))),
      body: HomePage(),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => CreateUserScreen()))
            .then((value) => setState(() {})),
      ),
    );
  }
}
