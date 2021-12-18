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
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void initState() {
    super.initState();
    passwordController.addListener(() => setState(() {}));
    emailController.addListener(() {
      setState(() {});
    });
  }

  String email;
  // String password;
  String phoneNumber;
  bool isPasswordVisible = true;

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
            SizedBox(height: 8),
            TextField(
              style: kTextStylewhite,
              cursorColor: Colors.white,
              onChanged: (value) {
                phoneNumber = value;
              },
              keyboardType: TextInputType.number,
              decoration: kTextFieldDecoration.copyWith(
                  hintText: 'Enter your phone number',
                  labelText: 'Phone Number',
                  prefixIcon: Icon(
                    Icons.phone,
                    color: Colors.white,
                  )),
            ),
            SizedBox(
              height: 24.0,
            ),
            Bttns(Colors.white, 'Register', () {
              print(emailController.text);
              print(passwordController.text);
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
