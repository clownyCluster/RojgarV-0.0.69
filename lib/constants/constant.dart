import 'package:flutter/material.dart';

const kSendButtonTextStyle = TextStyle(
  color: Colors.lightGreenAccent,
  fontWeight: FontWeight.bold,
  fontSize: 18.0,
);

const kMessageTextFieldDecoration = InputDecoration(
  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  hintText: 'Type your message here...',
  hintStyle: TextStyle(fontFamily: 'Salsa', color: Colors.white),
  border: InputBorder.none,
);

const kMessageContainerDecoration = BoxDecoration(
  border: Border(
    top: BorderSide(color: primaryColor, width: 2.0),
  ),
);
const kTextStylewhite = TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w400);
const kTextStyleBlack = TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.w400);

const kTextFieldDecoration = InputDecoration(
  hintText: '',
  hintStyle: TextStyle(color: Colors.white, fontFamily: 'Salsa'),
  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.redAccent, width: 1.0),
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.redAccent, width: 2.0),
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
);

const Color primaryColor = Color(0xFF1B5E20);
