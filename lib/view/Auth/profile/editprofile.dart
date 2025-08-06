import 'package:flutter/material.dart';

class Editprofile extends StatefulWidget {
  const Editprofile({super.key});

  @override
  State<Editprofile> createState() => _EditprofileState();
}

class _EditprofileState extends State<Editprofile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(child: Column(children: [
        
                Row(children: [
                  Container(margin: EdgeInsets.all( 20, ),
                    height: 40,
                    width: 40,
                    child: Image.asset("assets/image/parson.png",fit: BoxFit.cover,),
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
                       Navigator.of(context).pop();
                      },
                      icon: Icon(Icons.keyboard_arrow_right)),
                ),
               ],),
               Stack(
                 children:[ Container(width: 150,height: 150,margin: EdgeInsets.only(top: 100,left: 50),
                                child: Image.asset("assets/image/parson.png",fit: BoxFit.cover,),),
               
                              Container(width: 30,height: 30,
                                margin:EdgeInsets.only(top: 230,left: 150),
                              decoration: BoxDecoration(color: Colors.white,
                              borderRadius: BorderRadius.circular(25)),
                            
                                child: IconButton(onPressed: (){ }, icon: Icon(Icons.camera_alt,size: 16,)
                                )),]),
                                 SizedBox(height: 50,),
                     Text("البيانات الأساسية",style: TextStyle(
                      color: const Color.fromARGB(255, 84, 35, 136),
                      fontSize: 16,fontWeight: FontWeight.bold
                     ),),
                     
                     SizedBox(height: 50,),
                     Container(width: 400,height: 50,
                     child: Row(
                       children: [
                         Text("  Mohammed Ali Khaled Kamel ",style: TextStyle(
                          color: Colors.grey
                         ),),
                       ],
                     ),
                     decoration: BoxDecoration(color: Colors.white,
                     borderRadius: BorderRadius.circular(16)
                     ),),
                     SizedBox(height: 10,),
                     Container(width: 400,height: 50,
                     child: Row(
                       children: [
                         Text("  +20 01083765456221 ",style: TextStyle(
                          color: Colors.grey
                         ),),
                         Spacer(),
                         Text(" : رقم الهاتف  "),
                       ],
                     ),
                     decoration: BoxDecoration(color: Colors.white,
                     borderRadius: BorderRadius.circular(16)
                     ),),
                     SizedBox(height: 10,),
                     MaterialButton(onPressed: () {
                       showDialog(context: context ,builder: (context) 
                          { return AlertDialog(actions: [
                          Center(
                            child: FilledButton(onPressed: (){Navigator.of(context).pop();}, child: Container(width: 150,height: 50,
                                                child: Center(
                                                     child: Text("  حفظ كلمة المرور ",style: TextStyle(
                            color: Colors.white,
                                                     ),),
                                                ),
                                                decoration: BoxDecoration( color: const Color.fromARGB(255, 0, 91, 170),
                                                borderRadius: BorderRadius.circular(20)),)),
                          )
                         ],
                         title: Text( "  تعديل كلمة المرور",style: TextStyle(
                          color: const Color.fromARGB(255, 84, 35, 136),
                          fontSize: 18,fontWeight: FontWeight.bold
                         ),),
                         titlePadding: EdgeInsets.only(top: 20,left: 120),
                         content: Directionality(textDirection: TextDirection.rtl,
                           child: Container(width: 350,height: 300,
                             child: Column(children: [
                              Container(
                                margin:
                                    EdgeInsets.only(left: 10,right: 10,top: 50),
                                    decoration: BoxDecoration(color: Colors.white,
                                    borderRadius: BorderRadius.circular(20)),
                                child: TextFormField(
                                    decoration: InputDecoration(
                                      hintText: "   كلمة المرور الحالية ",
                                       
                                      hintStyle: TextStyle(color: Colors.grey),
                                      border: InputBorder.none
                                          
                                    )),
                              ),
                              SizedBox(height: 10,),
                              Container(
                                margin:
                                    EdgeInsets.only(left: 10,right: 10,),
                                    decoration: BoxDecoration(color: Colors.white,
                                    borderRadius: BorderRadius.circular(20)),
                                child: TextFormField(
                                    decoration: InputDecoration(
                                      hintText: "   كلمة المرور الجدية ",
                                       
                                      hintStyle: TextStyle(color: Colors.grey),
                                      border: InputBorder.none
                                          
                                    )),
                              ),
                              Container(
                                margin:
                                    EdgeInsets.only(left: 10,right: 10,top: 10),
                                    decoration: BoxDecoration(color: Colors.white,
                                    borderRadius: BorderRadius.circular(20)),
                                child: TextFormField(
                                    decoration: InputDecoration(
                                      hintText: "   تأكيد كلمة المرور الجدية ",
                                       
                                      hintStyle: TextStyle(color: Colors.grey),
                                      border: InputBorder.none
                                          
                                    )),
                              ),
                             ],),
                           ),
                         ),
                         );}
                       );
                     },
                       child: Container(width: 400,height: 50,
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
                     ),
                     SizedBox(height: 10,),
                     Container(width: 400,height: 50,
                     child: Row(
                       children: [
                         Text("    سوهاج    ",style: TextStyle(
                          color: Colors.grey
                         ),),
                         Spacer(),
                         Text(" : المدينة ")
                       ],
                     ),
                     decoration: BoxDecoration(color: Colors.white,
                     borderRadius: BorderRadius.circular(16)),),
                     SizedBox(height: 100,),
                     Row(children: [
                      MaterialButton(onPressed: () {
                        Navigator.of(context).pop();
                      },
                        child: Container(height: 50,width: 150,
                        margin: EdgeInsets.only(left: 80),
                         child: Center(
                           child: Text("  إلغاء ",style: TextStyle(
                            color: Colors.white,)),
                         ),
                           decoration: BoxDecoration(color: const Color.fromARGB(255, 0, 91, 170),
                                             borderRadius: BorderRadius.circular(16))
                        ),
                      ),
                      SizedBox(width: 20,),
                      MaterialButton(onPressed: () {
                        Navigator.of(context).pop();
                      },
                        child: Container(height: 50,width: 150,
                         child: Center(
                           child: Text(" حفظ التغيرات  ",style: TextStyle(
                            color: Colors.white,)),
                         ),
                           decoration: BoxDecoration(color: const Color.fromARGB(255, 128, 189, 244),
                                             borderRadius: BorderRadius.circular(16))
                        ),
                      )
                     ],)

      ],),),
    );
  }
} 