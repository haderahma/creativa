 import 'package:creativa_app/prov/prov.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      
      body:
       ListView(scrollDirection: Axis.vertical,
        children:[ Container(
          child: Column( 
            children: [
             Row( 
                    children: [
                    Container(height: 40,width: 30,margin: EdgeInsets.all( 20),
                    child: Image.asset("assets/image/creativalogo.png",fit: BoxFit.fill,),
                    ),
                    
                    Spacer(),
                     Container(
                    height: 40,
                    width: 40,
                    
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.white
                        ),
                    child:  Consumer<Control>(builder: (context, val, child) {
                     return IconButton(
                        onPressed: () {
                         Navigator.of(context).pushNamed("courseprogress");
                        },
                        icon: Icon( Icons.emoji_events));}),
                  ),
                   
                   Consumer<Control>(builder: (context, val, child) {
                     return 
                     MaterialButton(onPressed: () {

                     },
                       child: Container(margin: EdgeInsets.all(20),
                                           height: 40,
                                           width: 40,
                                           child: Image.asset("assets/image/parson.png",fit: BoxFit.cover,),
                                           ),
                     );})
                    ]),
                      Directionality(textDirection: TextDirection.rtl,
                        child: Container(height: 50,width: 400,
                                          decoration: BoxDecoration(color: Colors.white,
                                          borderRadius: BorderRadius.circular(16)),
                         child: Row(
                           children: [
                             IconButton(onPressed: (){},
                             icon: Icon(Icons.search)
                             ),
                             Text("ابحث عن منحة",style: TextStyle(color: Colors.grey),)
                           ],
                         ),
                         ),
                      ),
                      SizedBox(height: 20,),
                    SizedBox(width: 20,),
                  Container(width: 350,height: 250,
                  child: Image.asset("assets/image/creativalogo.png",fit: BoxFit.fill,),
                  ),
                  SizedBox(height: 10,),
                   SingleChildScrollView(scrollDirection: Axis.horizontal,
                    child: Row(children: [
                    Container(height: 50,width: 100,margin: EdgeInsets.only(left: 10),
                    child: Center(child: Text("الكل",style: TextStyle(color: Colors.white),)),
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 84, 35, 136),
                        borderRadius: BorderRadius.circular(16)
                       ),
                    ),
                    SizedBox(width: 10,),
                     Container(height: 50,width: 200,
                    child: Center(child: Text(" UX & UI Design",style: TextStyle(fontWeight: FontWeight.bold,
                    color: const Color.fromARGB(255, 84, 35, 136),),
                    )),
                      decoration: BoxDecoration(
                        color: Colors.white,
                      borderRadius: BorderRadius.circular(25)),
                    ),
                    SizedBox(width: 10,),
                     Container(height: 50,width: 200,
                    child: Center(child: Text(" Web Development",style: TextStyle(fontWeight: FontWeight.bold,
                    color: const Color.fromARGB(255, 84, 35, 136),),)),
                      decoration: BoxDecoration(
                        color: Colors.white ,
                      borderRadius: BorderRadius.circular(25)),
                    ),
                    SizedBox(width: 10,),
                     Container(height: 50,width: 200,
                    child: Center(child: Text("IT ",style: TextStyle( fontWeight: FontWeight.bold,
                    color: const Color.fromARGB(255, 84, 35, 136),),)),
                      decoration: BoxDecoration(
                        color: Colors.white,
                      borderRadius: BorderRadius.circular(25)),
                    ),
                    SizedBox(width: 10,),
                     Container(height: 50,width: 200,
                    child: Center(child: Text("Graphic Design ",style: TextStyle(fontWeight: FontWeight.bold,
                    color: const Color.fromARGB(255, 84, 35, 136),),)),
                      decoration: BoxDecoration(
                        color:  Colors.white,
                      borderRadius: BorderRadius.circular(25)),
                    ),
                    SizedBox(width: 10,),
                     Container(height: 50,width: 200,
                    child: Center(child: Text("Data Science ",style: TextStyle(fontWeight: FontWeight.bold,
                    color: const Color.fromARGB(255, 84, 35, 136),),)),
                      decoration: BoxDecoration(
                        color:  Colors.white,
                      borderRadius: BorderRadius.circular(25)),
                    ),
                    SizedBox(width: 10,),
                     Container(height: 50,width: 200,
                    child: Center(child: Text(" Ai ",style: TextStyle(fontWeight: FontWeight.bold,
                    color: const Color.fromARGB(255, 84, 35, 136),),)),
                      decoration: BoxDecoration(
                        color:  Colors.white,
                      borderRadius: BorderRadius.circular(25)),
                    ),
                   
                   ],),),
                    
                    Row(
                      children: [Consumer<Control>(builder: (context, val, child) {
                     return
                        MaterialButton(onPressed: () {
                          Navigator.of(context).pushNamed("bookingcourse");
                        },
                          child: Column(
                            children: [
                              Stack(
                                children: [Container(margin: EdgeInsets.only(left: 10,top: 20),
                                  width: 220,height: 370,
                                  decoration: BoxDecoration(color: Colors.white,
                                  borderRadius: BorderRadius.circular(10)),
                                  child: Container(width: 200,height: 150,margin: EdgeInsets.only(bottom: 170),
                                  child:Image.asset("assets/image/man.png",fit: BoxFit.fill,),
                                  ),
                                   ),
                                Container(margin: EdgeInsets.only(top: 230,left: 20),width: 200,
                                  child: Text("Dart Programming Language Basics Tutorials ",
                                  style: TextStyle(color: Colors.black,
                                  fontSize: 16,
                                  ),
                                  )),
                                  
                                Container(margin: EdgeInsets.only(top: 280,left: 20),
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
        
                 
                    ])),]
      )
    );
  }
  }