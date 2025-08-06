import 'package:creativa_app/prov/prov.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Coursecontent extends StatefulWidget {
  const Coursecontent({super.key});

  @override
  State<Coursecontent> createState() => _CoursecontentState();
}

class _CoursecontentState extends State<Coursecontent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(width: double.infinity,
        child: Column(children: [
         Row(children: [
                  Container(margin: EdgeInsets.all( 20, ),
                    height: 40,
                    width: 40,
                    child: Image.asset("assets/image/parson.png",fit: BoxFit.cover,),
                    ),
                    Spacer(),
                    Container(margin: EdgeInsets.only(right: 20),
                  height: 40,
                  width: 40,
                   decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.white
                      ),
                  child: Consumer<Control>(builder: (context, val, child) {
                     return IconButton(
                      onPressed: () {
                       Navigator.of(context).pop();
                      },
                      icon: Icon(Icons.keyboard_arrow_right));}),
                ),
                    ],),
                    SizedBox(height: 20,),
                     Stack(children: [
                      Container(width: 400,height: 150,margin: EdgeInsets.only(top: 70,left: 50),
                        decoration: BoxDecoration(color: Colors.white,
                        borderRadius: BorderRadius.circular(16)),
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              Container(width: 120,height: 120,margin: EdgeInsets.only(left: 200),
                              child: Image.asset("assets/image/parson.png",fit: BoxFit.cover,),),
                              
                            ],
                          ),
                          SizedBox(height: 20,),
                          Text("Mohammed Ali : المدرب ",style: TextStyle(
                            color: const Color.fromARGB(255, 84, 35, 136),
                            fontSize: 16,
                          ),),
                       SizedBox(height: 20,),
                      Text(" +20 01098765432 ",style: TextStyle(
                        color: const Color.fromARGB(255, 84, 35, 136),
                        fontSize: 16,
                      ),)
                        ],
                      ),
                    ],),
                    SizedBox(height: 20,),
                    Container(height: 450,width: 400,
                    decoration: BoxDecoration(color: Colors.white,
                    borderRadius: BorderRadius.circular(16)),
                    child: Column(
                      children: [
                      Row(children: [
                        Container(height: 40,width: 40,margin: EdgeInsets.all(20),
                          child: Image.asset("assets/image/flutterLogo.png",fit: BoxFit.fill,)),
                          Text("Flutter  Tutorial",style: TextStyle(color: const Color.fromARGB(255, 0, 91, 170),
                        fontSize: 18),),
                      ],),
                      Divider(indent: 40,endIndent: 40,),
                      SizedBox(height: 10,),
                      Container(margin: EdgeInsets.only(right: 120),
                        child: Text("1, Level 1 : Dart Basics",
                        style: TextStyle(color: const Color.fromARGB(255, 0, 91, 170),
                        fontSize: 18,fontFamily: "FingerPaint"),)),
                      SizedBox(height: 20,),
                      Container(height: 50,width: 200,margin: EdgeInsets.only(right: 100),
                        child: Text("Dart Programming Language Basics Tutorials")),
                      Container(margin: EdgeInsets.only(right: 100),
                        child: Text("2, Level 2 : Flutter Widgets ",style: TextStyle(color: const Color.fromARGB(255, 0, 91, 170),
                        fontSize: 18,fontFamily: "FingerPaint"),)),
                      SizedBox(height: 20,),
                      Container(height: 50,width: 200,margin: EdgeInsets.only(right: 100),
                        child: Text("Learn How To Use Widgets and Build a Strong UI Design")),
                        Container(margin: EdgeInsets.only(right: 50),
                          child: Text("3, Level 3 : State Management ",style: TextStyle(color: const Color.fromARGB(255, 0, 91, 170),
                        fontSize: 18,fontFamily: "FingerPaint"),)),
                      SizedBox(height: 20,),
                      Container(height: 50,width: 210,margin: EdgeInsets.only(right: 100),
                        child: Text(" Learn How To Use Provider and Managing Your Project easly"))
                    ],),),
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        Container(height: 50,width: 350,margin: EdgeInsets.only(left: 50),
                        child: Center(
                          child: Text("تم الإنتهاء من الدورة بتميز",style: TextStyle(
                            color: Colors.white,fontSize: 16
                          ),),
                        ),
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 60, 153, 63),
                          borderRadius: BorderRadius.circular(16)
                        ),),
                        SizedBox(width: 10,),
                        Container(height: 40,width: 40,
                        child: Icon(Icons.card_membership,color: Colors.blue,size: 16,),
                        decoration: BoxDecoration(color: Colors.white,
                        borderRadius: BorderRadius.circular(20)),)
                      ],
                    )
      ],),),
    );
  }
}