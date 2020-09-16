
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_createui/Buoi5/screen_b.dart';

class ScreenA extends StatelessWidget {
  static const routName = "/a";
  @override
  Widget build(BuildContext context) {

    return Container(
      color: Colors.orange,
      child: Center(
        child: Column(
          children: [
            RaisedButton(
              child: Text("Click A"),
              onPressed: () {
                Navigator.of(context).pushNamed(ScreenB.routName, arguments: "asdasd");
              },
            ),
            RaisedButton(
              child: Text("Go B by name"),
              onPressed: () async{
                final result = await Navigator.of(context).pushNamed(ScreenB.routName, arguments: "StringB");
                print("->>>>>>$result");
              },
            )
          ],

        ),

      ),
    );
  }
}
