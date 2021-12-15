import 'package:flutter/material.dart';
import '../models/bottomNavigation.dart';


class Profile extends StatefulWidget {
  static const String id = 'Profile_page';
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.purple, Colors.redAccent[700]],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight),
          ),
        ),
        title: Center(child: Text('User\'s profile',)),
        leading: IconButton(
            icon: Icon(Icons.arrow_back_outlined),
            onPressed: () {
              Navigator.pop(context);
            }),
        actions: [
          IconButton(icon: Icon(Icons.logout), onPressed: () {}),
        ],
      ),
      body: Container(
        padding: EdgeInsets.only(top: 10),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(
                left: 10,
                right: 10,
              ),
              child: Stack(
                children: [
                  Positioned(
                    top: -15,
                    right: -10,
                    child: IconButton(
                        icon: Icon(
                          Icons.menu_open_sharp,
                          color: Colors.black54,
                        ),
                        onPressed: () {}),
                  ),
                  Row(
                    children: [
                      Stack(
                        children: [
                          CircleAvatar(
                            radius: 50,
                            backgroundImage:
                                AssetImage('assets/images/Msalah.jpg'),
                          ),
                          Positioned(
                            bottom: 0,
                            left: 10,
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 2),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.redAccent[700],
                              ),
                              child: Text(
                                'Edit Profile',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Jonny Deep',
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                                fontWeight: FontWeight.w700),
                          ),
                          Text(
                            'Carrow Road, Norwich',
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.black54,
                                fontWeight: FontWeight.w300),
                          ),
                          Text(
                            'Movies: Pirates of Carrabean',
                            style: TextStyle(
                                fontSize: 12,
                                color: Colors.black45,
                                fontWeight: FontWeight.w200),
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationOthers(),
      // floatingActionButton: FloatingButton(),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}


