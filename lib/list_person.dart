import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_createui/item_list.dart';
import 'package:flutter_createui/person.dart';

class ListViewDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ListViewDemoState();
}

class _ListViewDemoState extends State<ListViewDemo> {
  final person = generatePerson;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: _separate(context),
      )
    );
  }

  Widget _separate(BuildContext context) {
    return Scrollbar(
      child: ListView.separated(
        scrollDirection: Axis.vertical,
          itemBuilder: (context, index) => ItemList(
            person: person[index],), 
          separatorBuilder: (context, index) => Divider(height: 1, thickness: 1,),
          itemCount: person.length),
    );
  }
}