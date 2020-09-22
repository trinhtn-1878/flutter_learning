import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Student.dart';

class AddStudentScreen extends StatefulWidget {
  final Student student;
  static const routName = "/add";

  const AddStudentScreen({Key key, this.student}) : super(key: key);
  @override
  _AddStudentScreenState createState() => _AddStudentScreenState();
}

class _AddStudentScreenState extends State<AddStudentScreen> {
  var nameTextController = TextEditingController();
  var subjectTextController = TextEditingController();
  var scoreTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Text("Thêm sinh viên",
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold)
            ),
            SizedBox(height: 20,),
            TextField(
              decoration:  InputDecoration(
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black)),
                fillColor: Colors.grey.withAlpha(50),
                filled: true,
                hintText: "Ho va ten",
                hintStyle: TextStyle(fontSize: 22, color: Colors.grey),
                contentPadding: EdgeInsets.only(left: 15,)
            ),
            controller: nameTextController,
            ),
            SizedBox(height: 32,),
            TextField(
              decoration:  InputDecoration(
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black)),
                  fillColor: Colors.grey.withAlpha(50),
                  filled: true,
                  hintText: "Mon Hoc",
                  hintStyle: TextStyle(fontSize: 22, color: Colors.grey),
                  contentPadding: EdgeInsets.only(left: 15,)
              ),
              controller: subjectTextController,
            ),
            SizedBox(height: 32,),
            TextField(
              decoration:  InputDecoration(
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black)),
                  fillColor: Colors.grey.withAlpha(50),
                  filled: true,
                  hintText: "Diem",
                  hintStyle: TextStyle(fontSize: 22, color: Colors.grey),
                  contentPadding: EdgeInsets.only(left: 15,)
              ),
              controller: scoreTextController,
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                RaisedButton(
                  color: Colors.greenAccent,
                  disabledColor: Colors.greenAccent,
                  child: Text("Them"),
                  onPressed: () {
                    var name = nameTextController.text;
                    var subject = subjectTextController.text;
                    var score = double.parse(scoreTextController.text) ?? 0.0;
                    Navigator.of(context).pop(Student(name,subject,score));
                  },
                ),
                SizedBox(width: 20,),
                RaisedButton(
                  color: Colors.greenAccent,
                  disabledColor: Colors.greenAccent,
                  child: Text("Huy"),
                    onPressed: () {
                      Navigator.of(context).pop();
                    }
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
