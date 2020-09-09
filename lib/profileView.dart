import 'package:flutter/material.dart';

class profileView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold (
        body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget> [
                    SizedBox(height: 35),
                    inforview,
                    SizedBox(height: 22,),
                    information,
                    SizedBox(height: 16,),
                    informationAddressRow,
                    SizedBox(height: 16,),
                    activityTitle,
                    SizedBox(height: 16,),
                    activityRow
                  ]
              ),
            )
        )
    );
  }

  get inforview => Container(
    child: profileRow,
    height: 200,
  );

  get profileRow => Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: <Widget>[
      Expanded(child:  avatar
      ),
      Expanded(child: Padding(
        padding: EdgeInsets.only(right: 10),
        child: nameJobCollumn,
      ))
    ],
  );

  get avatar => Container(
    height: 200,
    padding: EdgeInsets.only(right: 20),
    child: ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Image.asset("Asset/nguyenhuuda.jpg",fit: BoxFit.cover,),

    ),
  );

  get name => Text(
      "Mr. Nguyen Huu Da",
    style: TextStyle(
      fontSize: 28,

    ),
  );
  get job => Text(
    "Boxer",
    style: TextStyle(
      fontSize: 20,
      color: Colors.grey
    ),
  );

  get nameJobCollumn => Column(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
        name,
        job,
      ],),
      contactColumn
    ],
  );

  get contactColumn => Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[
      mailButton,
      phoneButton,
      faceTimeButton
    ],
  );

  get mailButton => Container(
      child: Icon(Icons.email,size: 25, color: Colors.orange,),
      width: 40,
      height: 40,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.orange.withOpacity(0.3))
  );

  get phoneButton => Container(
      child: Icon(Icons.phone,size: 25, color: Colors.red,),
      width: 40,
      height: 40,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.red.withOpacity(0.3))
  );

  get faceTimeButton => Container(
      child: Icon(Icons.videocam,size: 25, color: Colors.grey,),
      width: 40,
      height: 40,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.grey.withOpacity(0.3))
  );

  get information => Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisAlignment: MainAxisAlignment.start,
    children: <Widget>[
      Text("About",
      style: TextStyle(fontSize: 20)),
      SizedBox(height: 10),
      Text("Mr.Da is famous boxer in VietNam. \n 'Im over 70 years old but i never seen the situation like that, if it was me, i would punch a few to face, really'  -Nguyen Huu Da-",
      style: TextStyle(color: Colors.grey,
      fontSize: 13))
    ],
  );

  get informationAddressRow => Row(
    children: <Widget>[
      Expanded(child: addressInforColumn),
      Expanded(child:mapImage )
    ],
  );

  get addressInforColumn => Column(
      children: <Widget>[
        addressRow,
        timeWorkRow
      ],
  );

  get addressRow => Row(
  children: <Widget>[
    Expanded(child: Icon(Icons.location_on, size: 20,),flex: 1,),
    Expanded(child: inforAddressColumn,flex: 4,)
  ],
  );

  get timeWorkRow => Row(
    children: <Widget>[
      Expanded(child: Icon(Icons.access_time, size: 20,),flex: 1,),
      Expanded(child: inforTimeWorkColumn,flex: 4,)
      
    ],
  );

  get inforAddressColumn => Container(
    height: 100,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text("Address:",
        style: TextStyle(fontSize: 15),),
        SizedBox(height: 4,),
 
    Text("House #2 Road #5, Green Road, Dhamondhi, Dhaka, Bangladesh",
          style: TextStyle(fontSize: 12, color: Colors.black26))
      ],
    ),
  );

  get inforTimeWorkColumn => Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text("Daily Practice:",
        style: TextStyle(fontSize: 16),),
      SizedBox(height: 4,),
      Text("Monday - Friday,\n Open till 7.PM",
          style: TextStyle(fontSize: 12, color: Colors.black26))
    ],
  );

  get mapImage => Container(
    padding: EdgeInsets.only(left: 20),
    child: ClipRRect(
    borderRadius: BorderRadius.circular(20),
    child: Image.asset("Asset/map.png"),
    ),
  );

  get activityTitle => Container(
    child: Text("Activity",
    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
  );

  get activityRow => Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Expanded(child:listOfSchedule,flex: 10,),
        Expanded(child: SizedBox(),flex: 1,),
        Expanded(child:  dailyPost,flex: 10,)
      ],
  );

  get listOfSchedule => Container(
    height: 80,
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.orangeAccent,),
  padding: EdgeInsets.only(left: 20, right: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Expanded(child: scheduleIcon(Colors.amber.withOpacity(0.5)),flex: 2,),
          Expanded(
            child: Text("List Of Schedule",
            style: TextStyle(color: Colors.white)),flex: 3,
          )
        ],
      ),
  );

  get dailyPost => Container(
    height: 80,
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.grey,),
    padding: EdgeInsets.only(left: 20, right: 20),
    child: Row(
      children: <Widget>[
        Expanded(child: scheduleIcon(Colors.white10),flex: 2,),
        Expanded(
          child: Text("Doctor Daily Post",
            style: TextStyle(color: Colors.white),),flex: 3,
        )
      ],
    ),
  );

  Widget scheduleIcon(Color color) => Center(
    child: Container(
        child: Icon(Icons.featured_play_list,size: 25, color: Colors.white,),
        width: 40,
        height: 40,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: color)
    ),
  );

}