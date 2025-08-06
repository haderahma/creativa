import 'package:creativa_app/onboarding.dart';
import 'package:creativa_app/prov/prov.dart';
import 'package:creativa_app/view/Auth/profile/editprofile.dart';
import 'package:creativa_app/view/Auth/profile/profile.dart';
import 'package:creativa_app/view/Auth/register.dart';
import 'package:creativa_app/view/Auth/reset/enterEmail.dart';
import 'package:creativa_app/view/Auth/reset/newPass.dart';
import 'package:creativa_app/view/Auth/reset/verifycodePass.dart';
import 'package:creativa_app/view/Auth/signin.dart';
import 'package:creativa_app/view/Auth/verifycode.dart';
import 'package:creativa_app/view/courses/FavouritCourses.dart';
import 'package:creativa_app/view/courses/Notifications.dart';
import 'package:creativa_app/view/courses/Support.dart';
import 'package:creativa_app/view/courses/bookingCourse.dart';
import 'package:creativa_app/view/courses/coursecontent.dart';
import 'package:creativa_app/view/courses/courseprogress.dart';
import 'package:creativa_app/view/home/home_widget.dart';
import 'package:creativa_app/view/home/home.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
     return ChangeNotifierProvider(
      create: (context) {
        return Control();
      },
     child: MaterialApp(
      routes: {
        "onboarding": (context) => Onboarding(),
        "signin": (context) => Signin(),
        "verifycode": (context) => Verifycode(),
        "register": (context) => Register(),
        "enteremail": (context) => Enteremail(),
        "newpass": (context) => newPass(),
        "verifycodepass": (context) => VerifycodePass(),
        "home": (context) => Home(),
        "profile": (context) => Profile(),
        "editprofile": (context) => Editprofile(),
        "courseprogress": (context) => Courseprogress(),
        "coursecontent": (context) => Coursecontent(),
        "bookingcourse": (context) => Bookingcourse(),
        "support": (context) =>  Support(),
        "notifications": (context) => Notifications(),
        "favouritcourses": (context) => Favouritcourses(),
        "homewidget": (context) => HomeWidget(),
        
      },
     debugShowMaterialGrid: false,
      debugShowCheckedModeBanner: false, 
      home:  Onboarding(),
    ),
    );
  }
}
