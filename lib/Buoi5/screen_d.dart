
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_createui/Buoi5/screen_a.dart';

class ScreenD extends StatelessWidget {
  static const routName = "/d";
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.orange,
      child: Center(
        child: RaisedButton(
          child: Text("Click D"),
          onPressed: () {
            Navigator.of(context).push(
                MaterialPageRoute(
                    builder: (context) => ScreenA()
                )
            );
          },
        ),
      ),
    );
  }
}
