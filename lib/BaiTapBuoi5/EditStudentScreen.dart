import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Student.dart';

class EditStudentScreen extends StatefulWidget {
  Student student;
  static const routName = "/edit";

  @override
  _EditStudentScreenState createState() => _EditStudentScreenState();
}

class _EditStudentScreenState extends State<EditStudentScreen> {
  var nameTextController = TextEditingController();
  var subjectTextController = TextEditingController();
  var scoreTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var a = ModalRoute.of(context).settings.arguments;
    print("->>>>BBB$a");
    widget.student = a;
    nameTextController.text = widget.student.name;
    subjectTextController.text = widget.student.subject;
    scoreTextController.text = widget.student.score.toString();
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Text("Sửa sinh vien",
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
                  child: Text("Cap nhat"),
                  onPressed: () {
                    widget.student.name = nameTextController.text;
                    widget.student.subject = subjectTextController.text;
                    widget.student.score = double.parse(scoreTextController.text) ?? 0.0;
                    Navigator.of(context).pop(widget.student);
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
