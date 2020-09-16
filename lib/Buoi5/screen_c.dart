
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_createui/Buoi5/screen_d.dart';

class ScreenC extends StatelessWidget {
  static const routName = "/c";
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.orange,
      child: Center(
        child: RaisedButton(
          child: Text("Go first"),
          onPressed: () {
            Navigator.of(context).popUntil((route) => route.isFirst);
          },
        ),
      ),
    );
  }
}
