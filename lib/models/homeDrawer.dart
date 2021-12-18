import 'package:flutter/material.dart';
import 'package:rojgar_assignment/constants/constant.dart';
import 'package:rojgar_assignment/screens/login.dart';
import 'package:rojgar_assignment/screens/maps.dart';
import 'package:rojgar_assignment/screens/profile_page.dart';

class HomeDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Drawer(
          child: ListView(
            // Important: Remove any padding from the ListView.
            padding: EdgeInsets.zero,
            children: [
              Container(
                height: MediaQuery.of(context).size.height*0.3,
                child: DrawerHeader(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: [Color(0xFF9C27B0), Color(0xFFD50000)],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        child: CircleAvatar(
                          radius: 50,
                          backgroundImage:
                              AssetImage('assets/images/Msalah.jpg'),
                        ),
                        onTap: () {
                          Navigator.pushNamed(context, Profile.id);
                        },
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Gyanendra Bahadur Bajracharya',
                        style: kTextStylewhite,
                      ),
                      Text(
                        'Professional Footballer',
                        style: kTextStylewhite.copyWith(
                            fontWeight: FontWeight.w300),
                      )
                    ],
                  ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.map_outlined),
                title: Text(
                  'Maps',
                  style: kTextStyleBlack,
                ),
                onTap: () {
                  Navigator.pushNamed(context, GoogleMaps.id);
                },
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text('Settings', style: kTextStyleBlack),
                onTap: () {
                  // Update the state of the app
                  // ...
                  // Then close the drawer
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(Icons.phone),
                title: Text('About us', style: kTextStyleBlack),
                onTap: () {
                  // Update the state of the app
                  // ...
                  // Then close the drawer
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(Icons.report),
                  title: Text(
                'Report a problem!',
                style: kTextStyleBlack,
              )),
              ListTile(
                leading: Icon(Icons.logout),
                title: Text(
                  'Log Out',
                  style: kTextStyleBlack,
                ),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.pushNamed(context, LoginScreen.id);
                },
              ),
            ],
          ),
        ),
        Positioned(
            bottom: 20,
            left: MediaQuery.of(context).size.width * 0.35,
            child: Text('0.0.69')),
      ],
    );
  }
}
