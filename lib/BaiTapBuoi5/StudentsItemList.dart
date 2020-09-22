import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_createui/BaiTapBuoi5/EditStudentScreen.dart';
import 'package:flutter_createui/BaiTapBuoi5/ListStudentsScreen.dart';

import 'Student.dart';

class StudentItemsList extends StatefulWidget {
  Student student;
  Function(Student student) onClick;
  Function(Student student) onClickDelete;
  StudentItemsList({Key key, this.student, this.onClick, this.onClickDelete}) : super(key: key){
    print("constructor: ${student.name}");
  }
  @override
  _StudentItemsListState createState() => _StudentItemsListState();
}

class _StudentItemsListState extends State<StudentItemsList> {


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async{
        widget.onClick(widget.student);
      },
      onLongPress: () {
        _showDialogDelete();
      },
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Row(
          children: [
            Container(
              alignment: Alignment.center,
              height: 50,
              width: 50,
              decoration:  BoxDecoration(borderRadius: BorderRadius.circular(20),
              color: Colors.deepOrange),
              child:  Text(widget.student.name[0],
              style: TextStyle(fontSize: 20, color: Colors.white))
            ),
            SizedBox(width: 20,),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(widget.student.name,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                  Text(widget.student.subject,
                      style: TextStyle(fontSize: 12))
                ],
              ),
            ),
            Text(widget.student.score.toString(),
                style: TextStyle(fontSize: 26, color: Colors.grey))
          ],
        ),
      ),
    );
  }

  Future<void> _showDialogDelete() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Thong Bao'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text(''),
                Text('Ban muon xoa sinh vien nay?'),
              ],
            ),
          ),
          actions: <Widget>[
            FlatButton(
              child: Text('Cancel'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            FlatButton(
              child: Text('Oke'),
              onPressed: () {
                Navigator.of(context).pop();
                widget.onClickDelete(widget.student);
              },
            ),
          ],
        );
      },
    );
  }
}
