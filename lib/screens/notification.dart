import 'package:flutter/material.dart';
import '../models/bottomNavigation.dart';
import '../constants/constant.dart';

class Notifications extends StatefulWidget {
  static const String id = 'Notifications';
  @override
  _NotificationsState createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Notifications',
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
          IconButton(icon: Icon(Icons.notifications_off), onPressed: () {})
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
