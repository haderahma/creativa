import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       
      backgroundColor: const Color.fromARGB(255, 250, 246, 246),
      body: Container(child: Column(children: [
        Row( 
                    children: [
                    Container(height: 40,width: 30,margin: EdgeInsets.all(20),
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
                    child: IconButton(
                        onPressed: () {
                         
                        },
                        icon: Icon( Icons.emoji_events)),
                  ),
                    SizedBox(width: 10,),
                     Container(margin: EdgeInsets.only(right: 20),
                    height: 40,
                    width: 40,
                    child: Image.asset("assets/image/parson.png",fit: BoxFit.cover,),
                    ),],),
                    Stack(children: [
                      Container(width: 400,height: 150,margin: EdgeInsets.only(top: 100,left: 50),
                        decoration: BoxDecoration(color: Colors.white,
                        borderRadius: BorderRadius.circular(16)),
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              Container(width: 100,height: 100,margin: EdgeInsets.only(top: 20,left: 200),
                              child: Image.asset("assets/image/parson.png",fit: BoxFit.cover,),),
                              Container(margin:EdgeInsets.only(top: 100,left: 100),
                                child: IconButton(onPressed: (){
                                  Navigator.of(context).pushNamed("editprofile");
                                }, icon: Icon(Icons.edit_square,)))
                            ],
                          ),
                          SizedBox(height: 20,),
                          Text("Mohammed Khaled Ahmed",style: TextStyle(
                            color: const Color.fromARGB(255, 84, 35, 136),
                            fontSize: 16,
                          ),),
                       SizedBox(height: 20,),
                      Text("Mohammed321Khaled@gmail.com",style: TextStyle(
                        color: const Color.fromARGB(255, 84, 35, 136),
                        fontSize: 16,
                      ),)
                        ],
                      ),
                    ],),
                    SizedBox(height: 50,),
                     Text("البيانات الأساسية",style: TextStyle(
                      color: const Color.fromARGB(255, 84, 35, 136),
                      fontSize: 16,fontWeight: FontWeight.bold
                     ),),
                     
                     SizedBox(height: 50,),
                     Container(width: 400,height: 50,
                     child: Row(
                       children: [
                         Text("  Mohammed Ali Khaled Kamel ",),
                       ],
                     ),
                     decoration: BoxDecoration(color: Colors.white,
                     borderRadius: BorderRadius.circular(16)
                     ),),
                     SizedBox(height: 10,),
                     Container(width: 400,height: 50,
                     child: Row(
                       children: [
                         Text("  +20 01083765456221 "),
                         Spacer(),
                         Text(" : رقم الهاتف  "),
                       ],
                     ),
                     decoration: BoxDecoration(color: Colors.white,
                     borderRadius: BorderRadius.circular(16)
                     ),),
                     SizedBox(height: 10,),
                     Container(width: 400,height: 50,
                     child: Row(
                       children: [
                         Text("     ******  "),
                         Spacer(),
                         Text(": كلمة المرور  ")
                       ],
                     ),
                     decoration: BoxDecoration(color: Colors.white,
                     borderRadius: BorderRadius.circular(16)
                     ),),
                     SizedBox(height: 10,),
                     Container(width: 400,height: 50,
                     child: Row(
                       children: [
                         Text("    سوهاج    "),
                         Spacer(),
                         Text(" : المدينة ")
                       ],
                     ),
                     decoration: BoxDecoration(color: Colors.white,
                     borderRadius: BorderRadius.circular(16)),),
                     SizedBox(height: 30,),
                     Container(width: 150,height: 50,
                     child: Center(
                       child: Text("تسجيل الخروج",style: TextStyle(
                        color: Colors.white,
                       ),),
                     ),
                     decoration: BoxDecoration(color: const Color.fromARGB(255, 0, 91, 170),
                     borderRadius: BorderRadius.circular(16)),)
      ],),),
    );
  }
}