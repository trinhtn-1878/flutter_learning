import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'SubCategory.dart';

class SearchConsultant extends StatefulWidget {
  @override
  _SearchConsultantState createState() => _SearchConsultantState();
}

class _SearchConsultantState extends State<SearchConsultant> {
  final listCategories = Category.generateCategories;
  var indexCategoriesList = 0;
  var scrollController = ScrollController();

  @override
  void initState() {
    // TODO: implement initState
    scrollController.addListener(scrollListener);
    super.initState();
  }

   scrollListener() {
    if (scrollController.position.extentAfter <= 10) {
      Future.delayed(const Duration(milliseconds: 5000), () {
        setState(() {
          listCategories[indexCategoriesList].subCategories.addAll(SubCategory.generateSubCategories);
        });
      });
    }
  }

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
                  height: 30,
                ),
                Text("Find You \nConsultant",
                    style:
                    TextStyle(fontSize: 32, fontWeight: FontWeight.bold)),
                SizedBox(
                  height: 20,
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
                SizedBox(height: 20,),
                Text("Categories",
                    style: TextStyle(fontSize: 28,
                        fontWeight: FontWeight.bold)),
                SizedBox(height: 10,),
                Container(
                  child: _categoriesList(context),
                  alignment: Alignment.center,
                  height: 30,
                ),
                SizedBox(height: 10,),
                Container(
                  child: _SymptomList()
                ),
                SizedBox(height: 15,),
                Text("Doctors",
                  style: TextStyle(fontSize: 20,
                  fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10,),
                doctorInfor()
              ],
            )),
      ),
    );
  }

  Widget _categoriesList(BuildContext context) {
    return ListView.separated(
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) =>
          _itemCat(listCategories[index].name, index),
      separatorBuilder: (context, index) => SizedBox(width: 10,),
      itemCount: listCategories.length,
    );
  }

  Widget _SymptomList() {
    return Container(
      height: 250,
      child: ListView.separated(
        controller: scrollController,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) =>
            _itemSymptom(listCategories[indexCategoriesList].subCategories[index].name,
                listCategories[indexCategoriesList].subCategories[index].numberDoctor,
                listCategories[indexCategoriesList].subCategories[index].imagePath,
                listCategories[indexCategoriesList].subCategories[index].color),
        separatorBuilder: (context, index) => SizedBox(width: 20,),
        itemCount: listCategories[indexCategoriesList].subCategories.length,
      ),
    );
  }

  Widget _itemCat(String text, int index) {
    final colorText = indexCategoriesList == index
        ? Colors.orangeAccent
        : Colors.grey;
    final colorBg = indexCategoriesList == index ? Colors.orange.withOpacity(
        0.5) : Colors.transparent;
    return GestureDetector(
      onTap: () {
        setState(() {
          indexCategoriesList = index;
        });
      },
      child: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
            color: colorBg),
        width: 80,
        height: 35,

        alignment: Alignment.center,
        child: Text(text,
          style: TextStyle(fontSize: 14, color: colorText),),
      ),
    );
  }

  Widget _itemSymptom(String symptom, int numberDr, String imagePath, Color color) {

    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
          color: color),
      width: 150,
      child: Padding(
        padding: const EdgeInsets.only(top: 12, left: 12, right: 12, bottom: 4),
        child: Column(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 30),
                    child: Text(symptom,
                        style: TextStyle(fontSize: 18, color: Colors.white),),
                  ),
                  Text("$numberDr Doctor",
                    style: TextStyle(fontSize: 12, color: Colors.white),),
                ],
              ),
              flex: 1,
            ),
            Expanded(
              child:Image.asset(imagePath),
              flex: 1,
            )
          ],
        ),
      ),
    );
  }

  Widget doctorInfor() {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
          color: Colors.orangeAccent.withOpacity(0.2)),
      height: 70,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 50,
                width: 50,
                child: Image.asset("Asset/butter.png")),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Dr. Nguyen Huu Da",
                style: TextStyle(fontSize: 16, color: Colors.orangeAccent),),
                Text("Boxer",
                    style: TextStyle(fontSize: 16, color: Colors.orangeAccent))
              ],
            ),
            RaisedButton(
              color: Colors.orange,
              disabledColor: Colors.orange,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
              ),
              child: Text("Call"),
            ),
          ],
        ),
      ),
    );
  }
}
