import 'package:creativa_app/prov/prov.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:provider/provider.dart';

class Courseprogress extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 248, 248, 248),
     body: 
       ListView(scrollDirection: Axis.vertical,
         children:[  
             Container(
             child: Column(
               children: [
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
                  child:Consumer<Control>(builder: (context, val, child) {
                     return IconButton(
                      onPressed: () {
                       Navigator.of(context).pop();
                      },
                      icon: Icon(Icons.keyboard_arrow_right));})
                ),
                    ],),
                     
                 Container(width: 450,height: 220,
                 margin: EdgeInsets.only(top: 10,left: 15),
                 decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                 color: Colors.white,),
                  child: Column(
                    children: [
                      // Row for top part
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          
                          Container(margin: EdgeInsets.only(left: 10,top: 20),
                            child: CircularPercentIndicator(
                              radius: 45.0,
                              lineWidth: 10.0,
                              percent: 0.87,
                              center: Text("87 %", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                              progressColor: const Color.fromARGB(255, 255, 143, 107),
                              backgroundColor:  Colors.amberAccent,
                              circularStrokeCap: CircularStrokeCap.round,
                            ),
                          ),
                          
                          Container(margin: EdgeInsets.only(top: 20,right: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(" : اخر الدورات   ", style: TextStyle(fontSize: 12, color: Colors.black)),
                                SizedBox(height: 4),
                                Text(" Flutter برمجة تطبيقات ", style: TextStyle(fontSize: 16, color: const Color.fromARGB(255, 84, 53, 136))),
                                SizedBox(height: 8),
                                Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.end,
                                      children: [
                                        Text("instructor", style: TextStyle(fontSize: 10, color: Colors.grey)),
                                        Text("Mohammed Hanafy Mahmoud", style: TextStyle(fontSize: 12)),
                                      ],
                                    ),
                                    SizedBox(width: 8),
                            Container(margin: EdgeInsets.only(right: 10),
                                height: 40,
                                width: 40,
                                child: Image.asset("assets/image/parson.png",fit: BoxFit.cover,),
                                ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 40),
                      // Progress bars
                      Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     Expanded(child: buildProgressBar(title: "Basics Dart", percent: 0.64, color: const Color.fromARGB(255, 252, 173, 88))),
                     SizedBox(width: 8),
                     Expanded(child: buildProgressBar(title: "Flutter Widgets", percent: 0.30, color: const Color.fromARGB(255, 0, 91, 170))),
                     SizedBox(width: 8),
                     Expanded(child: buildProgressBar(title: "Provider", percent: 0.80, color: const Color.fromARGB(255, 128, 189, 244))),
                   ],
                 ),
    
                    ],
                  ),
                       ),
                                    SizedBox(height: 20,),
                  SingleChildScrollView(scrollDirection: Axis.horizontal,
                    child: Row(children: [
                    Container(height: 50,width: 150,
                    child: Center(child: Text(" الدورات الحالية",style: TextStyle(color: const Color.fromARGB(255, 84, 35, 136),  ),)),
                      decoration: BoxDecoration(
                        color:  Colors.white,
                      borderRadius: BorderRadius.circular(16)),
                    ),
                    SizedBox(width: 10,),
                     Container(height: 50,width: 150,
                    child: Center(child: Text(" الدورات المنجزة",style: TextStyle(fontWeight: FontWeight.bold,
                    color: const Color.fromARGB(255, 84, 35, 136),),
                    )),
                      decoration: BoxDecoration(
                        color: Colors.white,
                      borderRadius: BorderRadius.circular(16)),
                    ),
                    SizedBox(width: 10,),
                     Container(height: 50,width: 150,
                    child: Center(child: Text("كل الدورات ",style: TextStyle(fontWeight: FontWeight.bold,
                    color: Colors.white ))),
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 0, 91, 170) ,
                      borderRadius: BorderRadius.circular(16)),
                    ),
                    
                  
                   
                   ],),),
                       Row(
                      children: [Consumer<Control>(builder: (context, val, child) {
                     return
                        MaterialButton(onPressed: () {
                          Navigator.of(context).pushNamed("coursecontent");
                        },
                          child: Column(
                            children: [
                              Stack(
                                children: [
                                  Container(margin: EdgeInsets.only(left: 20,top: 20),
                                  width: 220,height: 370,
                                  decoration: BoxDecoration(color: Colors.white,
                                  borderRadius: BorderRadius.circular(10)),
                                  child: Container(width: 200,height: 150,margin: EdgeInsets.only(bottom: 170),
                                  child:Image.asset("assets/image/man.png",fit: BoxFit.fill,),
                                  ),
                                   ),
                                Container(margin: EdgeInsets.only(top: 230,left: 30),width: 200,
                                  child: Text("Dart Programming Language Basics Tutorials ",
                                  style: TextStyle(color: Colors.black,
                                  fontSize: 16,
                                  ),
                                  )),
                                  
                                Container(margin: EdgeInsets.only(top: 280,left: 30),
                                  child: Text(" Mohammed Ali",
                                  style: TextStyle(color: Colors.grey,
                                   fontSize: 10
                                  ),
                                  )),
                                    Container(width: 30,height: 30,
                                   margin: EdgeInsets.only(top: 25, left: 200),
                                   child: Icon(Icons.favorite_border,size: 15,color: Colors.black,),
                                      decoration: BoxDecoration(color: Colors.white,
                                      borderRadius: BorderRadius.circular(50),
                                      border: Border.all(color: Colors.white,width: 2)
                                      ),),
                                  Row(
                                    children: [
                                      Container(margin: EdgeInsets.only(left: 20,top: 300),
                                        child: Icon(Icons.star ,color: Colors.amber,size: 15,)),
                                       
                                      Container(margin: EdgeInsets.only(left: 5,top: 300),
                                         child: Icon(Icons.star ,color: Colors.amber,size: 15,)),
                                
                                       Container(margin: EdgeInsets.only(left: 5,top: 300),
                                         child: Icon(Icons.star ,color: Colors.amber,size: 15,)),
                                       
                                       Container(margin: EdgeInsets.only(left: 5,top: 300),
                                         child: Icon(Icons.star ,color: Colors.amber,size: 15,)),
                                       
                                       Container(margin: EdgeInsets.only(left: 5,top: 300),
                                         child: Icon(Icons.star ,color: Colors.amber,size: 15,)),
                          
                                  ],
                                  ),
                                  Container(height: 40,width: 170,
                                    margin: EdgeInsets.only(top: 350,left: 70),
                                  decoration: BoxDecoration(color:  const Color.fromARGB(255, 14, 170, 0),
                                  borderRadius: BorderRadius.only(topRight: Radius.circular( 16),topLeft: Radius.circular(16))),
                                    child:  Center(child: Text(" 100 of 100",style: TextStyle(color: Colors.white),)))
                                ]
                              ),
                              
                            ],
                          ),
                        );}),
                        Column(
                      children: [
                        Stack(
                          children: [Container(margin: EdgeInsets.only(left: 20,top: 20),
                            width: 220,height: 370,
                            decoration: BoxDecoration(color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                            child: Container(width: 200,height: 150,margin: EdgeInsets.only(bottom: 170),
                            child:Image.asset("assets/image/training.png",fit: BoxFit.fill,),
                            ),
                             ),
                          Container(margin: EdgeInsets.only(top: 230,left: 30),width: 200,
                            child: Text("Dart Programming Language Basics Tutorials ",
                            style: TextStyle(color: Colors.black,
                            fontSize: 16,
                            ),
                            )),
                            
                          Container(margin: EdgeInsets.only(top: 280,left: 30),
                            child: Text(" Mohammed Ali",
                            style: TextStyle(color: Colors.grey,
                             fontSize: 10
                            ),
                            )),
                              Container(width: 30,height: 30,
                             margin: EdgeInsets.only(top: 25, left: 200),
                             child: Icon(Icons.favorite_border,size: 15,color: Colors.black,),
                                decoration: BoxDecoration(color: Colors.white,
                                borderRadius: BorderRadius.circular(50),
                                border: Border.all(color: Colors.white,width: 2)),),
                            Row(
                              children: [
                                Container(margin: EdgeInsets.only(left: 20,top: 300),
                                  child: Icon(Icons.star ,color: Colors.amber,size: 15,)),
                                 
                                Container(margin: EdgeInsets.only(left: 5,top: 300),
                                   child: Icon(Icons.star ,color: Colors.amber,size: 15,)),
                          
                                 Container(margin: EdgeInsets.only(left: 5,top: 300),
                                   child: Icon(Icons.star ,color: Colors.amber,size: 15,)),
                                 
                                 Container(margin: EdgeInsets.only(left: 5,top: 300),
                                   child: Icon(Icons.star ,color: Colors.amber,size: 15,)),
                                 
                                 Container(margin: EdgeInsets.only(left: 5,top: 300),
                                   child: Icon(Icons.star ,color: Colors.amber,size: 15,)),
        
                            ],
                            ),
                            Container(height: 40,width: 170,
                              margin: EdgeInsets.only(top: 350,left: 70),
                            decoration: BoxDecoration(color:  const Color.fromARGB(255, 0, 91, 170),
                            borderRadius: BorderRadius.only(topRight: Radius.circular( 16),topLeft: Radius.circular(16))),
                              child:  Center(child: Text("الحجز : 1 أغسطس 2025 ",style: TextStyle(color: Colors.white),)))
                          ]
                        ),
                        
                      ],
                    ),
                 
                      ],
                    ),
                        Row(
                      children: [
                        Column(
                          children: [
                            Stack(
                              children: [Container(margin: EdgeInsets.only(left: 20,top: 20),
                                width: 220,height: 370,
                                decoration: BoxDecoration(color: Colors.white,
                                borderRadius: BorderRadius.circular(10)),
                                child: Container(width: 200,height: 150,margin: EdgeInsets.only(bottom: 170),
                                child:Image.asset("assets/image/man.png",fit: BoxFit.fill,),
                                ),
                                 ),
                              Container(margin: EdgeInsets.only(top: 230,left: 30),width: 200,
                                child: Text("Dart Programming Language Basics Tutorials ",
                                style: TextStyle(color: Colors.black,
                                fontSize: 16,
                                ),
                                )),
                                
                              Container(margin: EdgeInsets.only(top: 280,left: 30),
                                child: Text(" Mohammed Ali",
                                style: TextStyle(color: Colors.grey,
                                 fontSize: 10
                                ),
                                )),
                                  Container(width: 30,height: 30,
                                 margin: EdgeInsets.only(top: 25, left: 200),
                                 child: Icon(Icons.favorite_border,size: 15,color: Colors.black,),
                                    decoration: BoxDecoration(color: Colors.white,
                                    borderRadius: BorderRadius.circular(50),
                                    border: Border.all(color: Colors.white,width: 2)
                                    ),),
                                Row(
                                  children: [
                                    Container(margin: EdgeInsets.only(left: 20,top: 300),
                                      child: Icon(Icons.star ,color: Colors.amber,size: 15,)),
                                     
                                    Container(margin: EdgeInsets.only(left: 5,top: 300),
                                       child: Icon(Icons.star ,color: Colors.amber,size: 15,)),
                              
                                     Container(margin: EdgeInsets.only(left: 5,top: 300),
                                       child: Icon(Icons.star ,color: Colors.amber,size: 15,)),
                                     
                                     Container(margin: EdgeInsets.only(left: 5,top: 300),
                                       child: Icon(Icons.star ,color: Colors.amber,size: 15,)),
                                     
                                     Container(margin: EdgeInsets.only(left: 5,top: 300),
                                       child: Icon(Icons.star ,color: Colors.amber,size: 15,)),
                        
                                ],
                                ),
                                Container(height: 40,width: 170,
                                  margin: EdgeInsets.only(top: 350,left: 70),
                                decoration: BoxDecoration(color:  const Color.fromARGB(255, 0, 91, 170),
                                borderRadius: BorderRadius.only(topRight: Radius.circular( 16),topLeft: Radius.circular(16))),
                                  child:  Center(child: Text("الحجز : 1 أغسطس 2025 ",style: TextStyle(color: Colors.white),)))
                              ]
                            ),
                            
                          ],
                        ),
                        Column(
                      children: [
                        Stack(
                          children: [Container(margin: EdgeInsets.only(left: 20,top: 20),
                            width: 220,height: 370,
                            decoration: BoxDecoration(color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                            child: Container(width: 200,height: 150,margin: EdgeInsets.only(bottom: 170),
                            child:Image.asset("assets/image/training.png",fit: BoxFit.fill,),
                            ),
                             ),
                          Container(margin: EdgeInsets.only(top: 230,left: 30),width: 200,
                            child: Text("Dart Programming Language Basics Tutorials ",
                            style: TextStyle(color: Colors.black,
                            fontSize: 16,
                            ),
                            )),
                            
                          Container(margin: EdgeInsets.only(top: 280,left: 30),
                            child: Text(" Mohammed Ali",
                            style: TextStyle(color: Colors.grey,
                             fontSize: 10
                            ),
                            )),
                              Container(width: 30,height: 30,
                             margin: EdgeInsets.only(top: 25, left: 200),
                             child: Icon(Icons.favorite_border,size: 15,color: Colors.black,),
                                decoration: BoxDecoration(color: Colors.white,
                                borderRadius: BorderRadius.circular(50),
                                border: Border.all(color: Colors.white,width: 2)),),
                            Row(
                              children: [
                                Container(margin: EdgeInsets.only(left: 20,top: 300),
                                  child: Icon(Icons.star ,color: Colors.amber,size: 15,)),
                                 
                                Container(margin: EdgeInsets.only(left: 5,top: 300),
                                   child: Icon(Icons.star ,color: Colors.amber,size: 15,)),
                          
                                 Container(margin: EdgeInsets.only(left: 5,top: 300),
                                   child: Icon(Icons.star ,color: Colors.amber,size: 15,)),
                                 
                                 Container(margin: EdgeInsets.only(left: 5,top: 300),
                                   child: Icon(Icons.star ,color: Colors.amber,size: 15,)),
                                 
                                 Container(margin: EdgeInsets.only(left: 5,top: 300),
                                   child: Icon(Icons.star ,color: Colors.amber,size: 15,)),
        
                            ],
                            ),
                            Container(height: 40,width: 170,
                              margin: EdgeInsets.only(top: 350,left: 70),
                            decoration: BoxDecoration(color:  const Color.fromARGB(255, 0, 91, 170),
                            borderRadius: BorderRadius.only(topRight: Radius.circular( 16),topLeft: Radius.circular(16))),
                              child:  Center(child: Text("الحجز : 1 أغسطس 2025 ",style: TextStyle(color: Colors.white),)))
                          ]
                        ),
                        
                      ],
                    ),
                 
                      ],
                    ),
               ],
             ),
           ),
         ]
       ),
    );
  }

Widget buildProgressBar({required String title, required double percent, required Color color}) {
  return Container(margin: EdgeInsets.only(left: 20,right: 20),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          "$title : ${(percent * 100).toInt()} %",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 10),
        ),
        SizedBox(height: 20),
        LinearProgressIndicator(
          value: percent,
          color: color,
          backgroundColor: Colors.grey[300],
          minHeight: 6,
          borderRadius: BorderRadius.circular(4),
        ),
      ],
    ),
  );


  }
}
