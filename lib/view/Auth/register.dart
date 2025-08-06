import 'package:creativa_app/companat/colorsApp.dart';
import 'package:creativa_app/companat/dialogapp.dart';
import 'package:creativa_app/prov/prov.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
   ColorsApp colorsapp = new ColorsApp();
  Dialogapp dialogapp = new Dialogapp();
  final GlobalKey<FormState> formState = new GlobalKey();
  @override
  Widget build(BuildContext context) {
   
  return Consumer<Control>(builder: (context, val, child) {
    return Scaffold(
        
        body: Directionality(
          textDirection: TextDirection.rtl,
          child: Container(
            child: Column(
              children: [
                Row(children: [
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
                Spacer(),
                  Container(height: 40,width: 30,margin: EdgeInsets.all(20),
                  child: Image.asset("assets/image/creativalogo.png",fit: BoxFit.fill,),),
                  
                 
                
                 
                ],),
                SizedBox(height: 50,),
                Text(" إنشاء حساب جديد",
                style: TextStyle(color: const Color.fromARGB(255, 0, 91, 170),
                  fontSize: 32,fontWeight: FontWeight.bold
                ),),
                SizedBox(height: 50,),
                Text("أدخل بياناتك لتبدء",
                style: TextStyle(
                  fontSize: 18,
                ),),
                Container(
                        margin:
                            EdgeInsets.only(left: 50,right: 50,top: 50,bottom: 10),
                            decoration: BoxDecoration(color: Colors.white,
                            borderRadius: BorderRadius.circular(20)),
                        child: TextFormField(
                              controller: val.api.name,
                            decoration: InputDecoration(  
                              hintText: "   الاسم",
                               
                              hintStyle: TextStyle(color: Colors.grey),
                              border: InputBorder.none
                            )),
                      ),
                      Container(
                        margin:
                            EdgeInsets.only(left: 50,right: 50,),
                            decoration: BoxDecoration(color: Colors.white,
                            borderRadius: BorderRadius.circular(20)),
                        child: TextFormField(
                           controller: val.api.email,
                            decoration: InputDecoration(
                              hintText: " الايميل  ",
                               
                              hintStyle: TextStyle(color: Colors.grey),
                              border: InputBorder.none
                                  
                            )),
                      ),
                    Container(
                        margin:
                            EdgeInsets.only(left: 50,right: 50,top: 10,),
                            decoration: BoxDecoration(color: Colors.white,
                            borderRadius: BorderRadius.circular(20)),
                        child: TextFormField(
                           controller: val.api.phone,
                            decoration: InputDecoration(
                              hintText: " رقم الهاتف ",
                               
                              hintStyle: TextStyle(color: Colors.grey),
                              border: InputBorder.none
                                  
                            )),
                      ),
                    Container(
                        margin:
                            EdgeInsets.only(left: 50,right: 50,top: 10 ),
                            decoration: BoxDecoration(color: Colors.white,
                            borderRadius: BorderRadius.circular(20)),
                        child: TextFormField(
                           controller: val.api.city,
                            decoration: InputDecoration(
                              hintText: "المدينة ",
                               
                              hintStyle: TextStyle(color: Colors.grey),
                              border: InputBorder.none
                                  
                            )),
                      ),
                    Container(
                        margin:
                            EdgeInsets.only(left: 50,right: 50,top: 10, ),
                            decoration: BoxDecoration(color: Colors.white,
                            borderRadius: BorderRadius.circular(20)),
                        child: TextFormField(
                           controller: val.api.password,
                            decoration: InputDecoration(
                              hintText: "كلمة السر",
                               
                              hintStyle: TextStyle(color: Colors.grey),
                              border: InputBorder.none
                                  
                            )),
                      ),
                        Container(
                        margin:
                            EdgeInsets.only(left: 50,right: 50,top: 10,),
                            decoration: BoxDecoration(color: Colors.white,
                            borderRadius: BorderRadius.circular(20)),
                        child: TextFormField(
                            controller: val.api.password_confirmation,
                           
                            decoration: InputDecoration(
                              hintText: "تاكيد كلمة السر "  ,
                               
                              hintStyle: TextStyle(color: Colors.grey),
                              border: InputBorder.none
                                  
                            )),
                      ),
                    
                          SizedBox(height: 100,),
                          
                              
                              MaterialButton(onPressed: () {
                                 
                           
                           
                            Navigator.of(context).pushNamed("verifycode");
                          
                        
                              },
                                child: Container(height: 50,width: 200,
                                margin: EdgeInsets.only(right: 30),
                                child: Center(
                                  child: Text(" التالي  ",style: TextStyle(
                                    color: Colors.white ,), ),
                                ),
                                                             decoration: BoxDecoration( color: const Color.fromARGB(255, 0, 91, 170),
                                                             borderRadius: BorderRadius.circular(20)), ),
                              ),
                            
                              
                              
                            
                          
              ],
            ),
            
          ),
        ),
      );
  });
  }
}