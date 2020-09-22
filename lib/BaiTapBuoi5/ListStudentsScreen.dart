import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_createui/BaiTapBuoi5/AddStudentScreen.dart';
import 'package:flutter_createui/BaiTapBuoi5/EditStudentScreen.dart';
import 'package:flutter_createui/BaiTapBuoi5/Student.dart';
import 'package:flutter_createui/BaiTapBuoi5/StudentsItemList.dart';

class ListStudentsScreen extends StatefulWidget {
  static const routName = "/list";
  @override
  _ListStudentsScreenState createState() => _ListStudentsScreenState();
}

class _ListStudentsScreenState extends State<ListStudentsScreen> {
  List<Student> students = [];
  @override
  Widget build(BuildContext context) {
    var a = ModalRoute.of(context).settings.arguments;
    print("->>>>$a");
    return Scaffold(
      body: Container(
        child: _listScreen(),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () async{
         var a = await Navigator.of(context).pushNamed(AddStudentScreen.routName, arguments: "");
         if (a != null) {students.add(a);}
         setState(() {

         });
        },
      ),
    );
  }

  Widget _listScreen() {
    return ListView.separated(
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) => StudentItemsList(
          student: students[index],
          onClick: (student) async{
           var a = await Navigator.of(context).pushNamed(EditStudentScreen.routName,arguments: students[index]);
           print("asdasdas$a");
           if (a != null) {
             setState(() {

             });
           }
        },
        onClickDelete: (student) async{

            setState(() {
            students.removeAt(index);
            });

        },
        ),

        separatorBuilder: (context, index) => Divider(height: 1, thickness: 1,),
        itemCount: students.length);
  }
}
