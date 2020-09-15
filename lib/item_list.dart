import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_createui/person.dart';

class ItemList extends StatefulWidget {
  final Person person;

  ItemList({Key key, this.person}) : super(key: key){
    print("constructor: ${person.name}");
  }

  @override
  State<StatefulWidget> createState() {
    return _ItemListState();
  }
}

class _ItemListState extends State<ItemList> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: EdgeInsets.all(16),
      child: Row(
        children: <Widget>[
          Checkbox(
            value: isChecked,
            onChanged: (value) {
              setState(() {
                isChecked = value;
              });
            },
          ),
          Column(
            children: <Widget>[
              Text(widget.person.name),
              SizedBox(height: 6,),
              Text(widget.person.phoneNumber),
            ],
          )
        ],
      ),
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print("initState: ${widget.person.name}");
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    print("dispose: ${widget.person.name}");
  }
}