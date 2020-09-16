
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_createui/Buoi5/screen_c.dart';

class ScreenB extends StatelessWidget {
  static const routName = "/b";
  @override
  Widget build(BuildContext context) {
    var a = ModalRoute.of(context).settings.arguments;
    print("->>>>$a");

    return Container(
      color: Colors.orange,
      child: Center(
        child: Column(
          children: [
            RaisedButton(
              child: Text("Click B"),
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(
                        builder: (context) => ScreenC(),
                            settings: RouteSettings(name: "C")
                    )
                );
              },
            ),

            RaisedButton(
              child: Text("Pop to A"),
              onPressed: () {
                Navigator.of(context).pop("Data from b");
              },
            )
          ],
        ),
      ),
    );
  }
}
