import 'package:flutter/material.dart';

import 'package:rojgar_assignment/constants/buttons.dart';
import 'package:rojgar_assignment/constants/constant.dart';
import 'package:rojgar_assignment/screens/home.dart';
import 'package:rojgar_assignment/screens/registration.dart';

class LoginScreen extends StatefulWidget {
  static const String id = 'Login_Screen';
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool showSpinner = false;
  // final _auth = FirebaseAuth.instance;

  bool isPasswordVisible = true;

  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  String email;
  // String password;
  String phoneNumber;

  @override
  void initState() {
    super.initState();
    passwordController.addListener(
      () => setState(() {}),
    );
    emailController.addListener(
      () => setState(() {}),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 24,
        ),
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  'assets/images/abstract.jpg',
                ),
                fit: BoxFit.cover)),
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
              controller: emailController,
              style: kTextStylewhite,
              cursorColor: Colors.white,
              keyboardType: TextInputType.emailAddress,
              onChanged: (value) {
                email = value;
              },
              decoration: kTextFieldDecoration.copyWith(
                hintText: 'Enter your email',
                labelText: 'Email',
                prefixIcon: Icon(
                  Icons.mail,
                  color: Colors.white,
                ),
                suffixIcon: emailController.text.isEmpty
                    ? Container(
                        width: 0,
                      )
                    : IconButton(
                        onPressed: () => emailController.clear(),
                        icon: Icon(
                          Icons.close,
                          color: Colors.white,
                        ),
                      ),
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            TextField(
              style: kTextStylewhite,
              cursorColor: Colors.white,
              obscureText: isPasswordVisible,
              onChanged: (value) {
                passwordController.text = value;
                
              },
              decoration: kTextFieldDecoration.copyWith(
                hintText: 'Enter your password',
                labelText: 'Password',
                prefixIcon: Icon(
                  Icons.password,
                  color: Colors.white,
                ),
                // errorText: 'Password is wrong',

                suffixIcon: passwordController.text.isEmpty
                    ? Container(
                        width: 0,
                      )
                    : IconButton(
                        onPressed: () {
                          setState(() {
                            isPasswordVisible = !isPasswordVisible;
                          });
                        },
                        icon: isPasswordVisible
                            ? Icon(
                                Icons.visibility_off,
                                color: Colors.white,
                              )
                            : Icon(
                                Icons.visibility,
                                color: Colors.white,
                              ),
                      ),
              ),
            ),
            SizedBox(
              height: 24.0,
            ),
            Bttns(Colors.white70, 'Login', () {
              Navigator.pushNamed(context, Home.id);
            }
                // () async {
                //   setState(() {
                //     showSpinner = true;
                //   });
                //   final user = await _auth.signInWithEmailAndPassword(
                //       email: email, password: password);
                //   try {
                //     if (user != null) {
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
                  'Don\'t have an account? ',
                  style: TextStyle(color: Colors.white),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, RegistrationScreen.id);
                  },
                  child: Text('Register here',
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
