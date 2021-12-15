import '../screens/login.dart';
import '../screens/registration.dart';
import '../constants/buttons.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatefulWidget {
  static const String id = 'Welcome_Screen';
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen>
    with SingleTickerProviderStateMixin {
  AnimationController controller;
  Animation animation;
  @override
  void initState() {
    super.initState();

    controller = AnimationController(
      duration: Duration(seconds: 5),
      vsync: this,
    );
    controller.forward();
    // animation =
    //     ColorTween(begin: Colors.red, end: Colors.black).animate(controller);
    // controller.addListener(() {
    //   setState(() {});
    // });

    @override
    void dispose() {
      controller.dispose();
      super.dispose();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/abstract.jpg'),
            fit: BoxFit.cover
          ),
        ),
        padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.3, left: 30, right: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Row(
              children: <Widget>[
                SizedBox(width: MediaQuery.of(context).size.width*0.25),
                Text(
                  'Rojgar',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 45.0,
                    fontWeight: FontWeight.w900,
                    fontFamily: 'Salsa',
                  ),
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.2,
            ),
            Bttns(
              Colors.white70,
              'Login',
              () {
                Navigator.pushNamed(context, LoginScreen.id);
              },
            ),
            Bttns(
              Colors.white,
              'Register',
              () {
                Navigator.pushNamed(context, RegistrationScreen.id);
              },
            ),
          ],
        ),
      ),
    );
  }
}
