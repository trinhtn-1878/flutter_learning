import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchConsultant extends StatefulWidget {
  @override
  _SearchConsultantState createState() => _SearchConsultantState();
}

class _SearchConsultantState extends State<SearchConsultant> {
  final listCategories = ["Adults", "Childens", "Woman", "Men", "Student"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 100,
                ),
                Text("Find You \nConsultant",
                    style:
                        TextStyle(fontSize: 32, fontWeight: FontWeight.bold)),
                SizedBox(
                  height: 40,
                ),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none),
                    fillColor: Colors.grey.withAlpha(50),
                    filled: true,
                    prefixIcon: Padding(
                      padding: EdgeInsets.only(left: 25, right: 10),
                      child: Icon(Icons.search),
                    ),
                    hintText: "Search",
                    hintStyle: TextStyle(fontSize: 22, color: Colors.grey),
                    contentPadding: EdgeInsets.only(left: 15)
                  ),
                ),
                SizedBox(height: 40,),
                Text("Categories",
                style: TextStyle(fontSize: 28,
                fontWeight: FontWeight.bold)),
                Container(
                  child: _categoriesList(context),
                  alignment: Alignment.center,
                  height: 40,
                )
              ],
            )),
      ),
    );
  }

  Widget _categoriesList(BuildContext context) {
    return ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => _itemCat(listCategories[index]),
          separatorBuilder: (context, index) => SizedBox(width: 40,),
          itemCount: listCategories.length);
  }
  
  Widget _itemCat(String text) {
    return Container(
      width: 100,
      height: 50,
      color: Colors.orangeAccent,
      alignment: Alignment.center,
      child: Text(text,
      style: TextStyle(fontSize: 14),),
    );
  }
}
