import 'package:flutter/material.dart';

class FloatingButton extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: Colors.redAccent[700],
      child: Icon(Icons.add),
      onPressed: (){},
    );
  }
}
