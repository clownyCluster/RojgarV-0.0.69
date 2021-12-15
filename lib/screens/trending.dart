import 'package:flutter/material.dart';
import '../models/bottomNavigation.dart';
import '../constants/constant.dart';


class Trending extends StatefulWidget {
  static const String id = 'Trending';
  @override
  _NotificationsState createState() => _NotificationsState();
}

class _NotificationsState extends State<Trending> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // floatingActionButton: FloatingButton(),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      appBar: AppBar(
        title: Center(
          child: Text(
            'Trending',
            style: kTextStylewhite,
          ),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          IconButton(icon: Icon(Icons.filter_list_sharp), onPressed: () {})
        ],
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.purple, Colors.redAccent[700]],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationOthers(),
    );
  }
}
