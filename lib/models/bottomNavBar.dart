import 'package:flutter/material.dart';
import '../screens/home.dart';
import '../screens/notification.dart';
import '../screens/profile_page.dart';
import '../screens/trending.dart';

class BttmNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: CircularNotchedRectangle(),
      color: Colors.redAccent[700],
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        height: 40,
        // color: Colors.transparent,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
                icon: Icon(
                  Icons.home,
                  color: Colors.white,
                ),
                onPressed: () {
                  Navigator.pushNamed(context, Home.id);
                }),
            IconButton(
                icon: Icon(
                  Icons.trending_up,
                  color: Colors.white,
                ),
                onPressed: () {
                  Navigator.pushNamed(context, Trending.id);
                }),
            SizedBox.shrink(),
            IconButton(
                icon: Icon(
                  Icons.notifications,
                  color: Colors.white,
                ),
                onPressed: () {
                  Navigator.pushNamed(context, Notifications.id);
                }),
            IconButton(
              icon: Icon(
                Icons.person,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.pushNamed(context, Profile.id);
              },
            ),
          ],
        ),
      ),
    );
  }
}
