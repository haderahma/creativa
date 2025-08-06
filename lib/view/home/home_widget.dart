import 'package:creativa_app/view/Auth/profile/profile.dart';
import 'package:creativa_app/view/courses/FavouritCourses.dart';
import 'package:creativa_app/view/courses/Notifications.dart';
import 'package:creativa_app/view/courses/Support.dart';
import 'package:creativa_app/view/home/home.dart';
import 'package:flutter/material.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({super.key});

  @override
  State<HomeWidget> createState() => _HomeWidget();
}

class _HomeWidget extends State<HomeWidget> {
  var  currentIndex= 4;

List<Widget> listwidget = [
Profile(),
Support(),
Favouritcourses(),
Notifications(),
Home(),

];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: (val) {
          setState(() {
            currentIndex = val ;
          
          });
        },
        items: [
        BottomNavigationBarItem(icon: Icon(Icons.person_outline,color: Colors.black,), label: "حسابي",),
        BottomNavigationBarItem(icon: Icon(Icons.headset_mic_outlined,color: Colors.black),label: "الدعم"),
        BottomNavigationBarItem(icon: Icon(Icons.favorite_border,color: Colors.black),label: " المفضلة"),
        BottomNavigationBarItem(icon: Icon(Icons.notifications_none,color: Colors.black),label: "الإشعارات"),
        BottomNavigationBarItem(icon: Image.asset("assets/image/main.png",fit: BoxFit.fill,), label: "الرئيسية"),
        ],
       
      ) ,
    body: listwidget.elementAt(currentIndex),
    );
  }
}