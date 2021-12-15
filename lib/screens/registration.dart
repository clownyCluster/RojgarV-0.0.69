import 'package:flutter/material.dart';
import 'package:rojgar_assignment/screens/home.dart';
import 'package:rojgar_assignment/screens/login.dart';
import '../constants/constant.dart';
import '../constants/buttons.dart';

class RegistrationScreen extends StatefulWidget {
  static const String id = 'Registration_Screen';

  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  String email;
  String password;
  String phoneNumber;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  'assets/images/abstract.jpg',
                ),
                fit: BoxFit.cover)),
        padding: EdgeInsets.symmetric(
          horizontal: 24,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Flexible(
              child: Hero(
                tag: 'logo',
                child: Container(
                  height: 200.0,
                  child: Image.asset('assets/images/assignment.jpg'),
                ),
              ),
            ),
            SizedBox(
              height: 48.0,
            ),
            TextField(
              style: kTextStylewhite,
              cursorColor: Colors.white,
              keyboardType: TextInputType.emailAddress,
              onChanged: (value) {
                email = value;
              },
              decoration: kTextFieldDecoration.copyWith(
                hintText: 'Enter your email',
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            TextField(
              style: kTextStylewhite,
              cursorColor: Colors.white,
              obscureText: true,
              onChanged: (value) {
                password = value;
              },
              decoration: kTextFieldDecoration.copyWith(
                hintText: 'Enter your password',
              ),
            ),
            SizedBox(height: 8),
            TextField(
              style: kTextStylewhite,
              cursorColor: Colors.white,
              onChanged: (value) {
                phoneNumber = value;
              },
              keyboardType: TextInputType.number,
              decoration: kTextFieldDecoration.copyWith(
                  hintText: 'Enter your phone number'),
            ),
            SizedBox(
              height: 24.0,
            ),
            Bttns(Colors.white, 'Register', () {
              Navigator.pushNamed(context, Home.id);
            }
                // () async {
                //   setState(() {
                //     showSpinner = true;
                //   });
                //   try {
                //     final newUser = await _auth.createUserWithEmailAndPassword(
                //         email: email, password: password);
                //     if (newUser != null) {
                //       Navigator.pushNamed(context, Home.id);
                //     }
                //     setState(() {
                //       showSpinner = false;
                //     });
                //   } catch (e) {
                //     print(e);
                //   }
                // },
                ),
            Row(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.15,
                ),
                Text(
                  'Already have an account? ',
                  style: TextStyle(color: Colors.white),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, LoginScreen.id);
                  },
                  child: Text('Login here',
                      style: TextStyle(
                          color: Colors.blue[200],
                          decoration: TextDecoration.underline)),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

}
