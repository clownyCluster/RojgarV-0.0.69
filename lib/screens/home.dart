import 'package:flutter/material.dart';
import 'package:rojgar_assignment/models/postfield.dart';
import '../constants/constant.dart';
import '../models/floatingButton.dart';
import '../models/homeDrawer.dart';
import '../models/bottomNavBar.dart';

class Home extends StatefulWidget {
  static const String id = 'Home_Page';
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingButton(),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        appBar: AppBar(
          title: Center(
              child: Text(
            'Rojgar',
            style: kTextStylewhite,
          )),
          actions: [
            IconButton(icon: Icon(Icons.notifications), onPressed: () {}),
            IconButton(icon: Icon(Icons.search), onPressed: () {})
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
        drawer: HomeDrawer(),
        bottomNavigationBar: BttmNavBar(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              PostField(
                imagePath: 'assets/images/Msalah.jpg',
                name: 'Mohomad Salah',
                description: 'Professional Footballer',
              ),
              PostField(
                imagePath: 'assets/images/Msalah.jpg',
                name: 'Mohomad Salah',
                description: 'Professional Footballer',
              ),
              PostField(
                imagePath: 'assets/images/Msalah.jpg',
                name: 'Mohomad Salah',
                description: 'Professional Footballer',
              ),
              PostField(
                imagePath: 'assets/images/Msalah.jpg',
                name: 'Mohomad Salah',
                description: 'Professional Footballer',
              )
            ],
          ),
        ),
      ),
    );
  }
}
