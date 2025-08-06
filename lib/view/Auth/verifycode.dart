import 'package:creativa_app/companat/dialogapp.dart';
import 'package:creativa_app/companat/inputapp.dart';
import 'package:creativa_app/prov/prov.dart';
 import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
 

class Verifycode extends StatefulWidget {
  const Verifycode({super.key});

  @override
  State<Verifycode> createState() {
    return _VerifycodeState();
  }
}

class _VerifycodeState extends State<Verifycode> {
  @override
  Widget build(BuildContext context) {
    Dialogapp dialogapp = new Dialogapp();
    Inputapp inputapp = new Inputapp(data: "*",control: TextEditingController(),); 
    return Consumer<Control>(builder: (context, val, child) {
    return  Scaffold(
       body:  
          
            Container(width: double.infinity,
            child: Column(
              
              children: [
                Row( 
                  children: [
                  Container(height: 40,width: 30,margin: EdgeInsets.all(20),
                  child: Image.asset("assets/image/creativalogo.png",fit: BoxFit.fill,),),
                  
                  Spacer(),
                   Container(
                  height: 40,
                  width: 40,
                  
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.white
                      ),
                  child:
                  Consumer<Control>(builder: (context, val, child) {
                    return
                   IconButton(
                      onPressed: () {
                       Navigator.of(context).pop();
                      },
                      icon: Icon(Icons.keyboard_arrow_right));})
                ),
                 
                
                 
                ],),
                SizedBox(height: 100,),
                Text(" إنشاء حساب جديد",
                style: TextStyle(color: const Color.fromARGB(255, 0, 91, 170),
                  fontSize: 32,fontWeight: FontWeight.bold
                ),),
                SizedBox(height: 50,),
                Text("قم بإدخال رقم التأكيد الخاص بك ",
                style: TextStyle(color: Colors.blue,
                  fontSize: 18,
                ),),
                SizedBox(height: 30,),
                Container(
                    width: 200,
                    height: 65,
                    child: Row(
                      children: [
                         Expanded(child: Inputapp(data: "*",control: TextEditingController(),)),
                        Expanded(child: Inputapp(data: "*",control: TextEditingController(),)),
                        Expanded(child: Inputapp(data: "*",control: TextEditingController(),)),
                        Expanded(child: Inputapp(data: "*",control: TextEditingController(),)),
                        
                      ],
                    ),
                  ),
                  SizedBox(height: 50,),
                  Consumer<Control>(builder: (context, val, child) {
                   return
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        "اعادة ارسال الكود ",
                        style: TextStyle(
                            color: Colors.blue,
                            decoration: TextDecoration.underline),
                      ));}),
                 
                    
                          SizedBox(height: 300,),
                          
                              Consumer<Control>(builder: (context, val, child) {
                             return
                              MaterialButton(onPressed: () {
                                 Navigator.of(context).pushNamed("signin");
                              },
                                child: Container(height: 50,width: 200,
                                margin: EdgeInsets.only(right: 30),
                                child: Center(
                                  child: Text(" التالي  ",style: TextStyle(
                                    color: Colors.white ,), ),
                                ),
                                                             decoration: BoxDecoration( color: const Color.fromARGB(255, 0, 91, 170),
                                                             borderRadius: BorderRadius.circular(20)), ),
                              );})
                            
                              
                              
                            
                          
              ],
            ),
            
          ),
        
    );});
  }
}