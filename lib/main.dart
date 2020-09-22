import 'package:flutter/material.dart';
import 'package:flutter_createui/BaiTapBuoi5/AddStudentScreen.dart';
import 'package:flutter_createui/BaiTapBuoi5/EditStudentScreen.dart';
import 'package:flutter_createui/BaiTapBuoi5/ListStudentsScreen.dart';
import 'package:flutter_createui/ListViewBTVN/SearchScreen.dart';
import 'package:flutter_createui/list_person.dart';
import 'package:flutter_createui/profileView.dart';

import 'Buoi5/screen_a.dart';
import 'Buoi5/screen_b.dart';
import 'Buoi5/screen_c.dart';
import 'Buoi5/screen_d.dart';

main() async {
  return runApp(
    MaterialApp(
      home: ListStudentsScreen(),
      routes: {
        ScreenA.routName: (context) => ScreenA(),
        ScreenB.routName: (context) => ScreenB(),
        ScreenC.routName: (context) => ScreenC(),
        ScreenD.routName: (context) => ScreenD(),
        AddStudentScreen.routName: (context) => AddStudentScreen(),
        ListStudentsScreen.routName: (context) => ListStudentsScreen(),
        EditStudentScreen.routName: (context) => EditStudentScreen(),
      },
    )
  );
}
