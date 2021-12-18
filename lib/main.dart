import 'package:flutter/material.dart';
import 'package:rojgar_assignment/screens/addPostPage.dart';
import 'package:rojgar_assignment/screens/maps.dart';
import './screens/login.dart';
import './screens/notification.dart';
import './screens/registration.dart';
import './screens/trending.dart';
import './screens/home.dart';
import './screens/profile_page.dart';
import './screens/welcome.dart';

void main() {
  runApp(Rojgar());
}

class Rojgar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: WelcomeScreen.id,
      routes: {
        Profile.id : (context) => Profile(),
        Home.id : (context) => Home(),
        WelcomeScreen.id : (context) => WelcomeScreen(),
        RegistrationScreen.id :(context) => RegistrationScreen(),
        LoginScreen.id : (context) => LoginScreen(),
        // HomeDrawer.id: (context) => HomeDrawer(),
        Notifications.id: (context) => Notifications(),
        Trending.id: (context) => Trending(),
        GoogleMaps.id:(context) => GoogleMaps(),
        AddPost.id: (context) => AddPost(),
      },
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
