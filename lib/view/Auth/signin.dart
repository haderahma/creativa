import 'package:creativa_app/companat/colorsApp.dart';
import 'package:creativa_app/companat/dialogapp.dart';
import 'package:creativa_app/prov/prov.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class Signin extends StatefulWidget {
  const Signin({super.key});

  @override
  State<Signin> createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  ColorsApp colorsapp = new ColorsApp();
  Dialogapp dialogapp = new Dialogapp();
   
  @override
  Widget build(BuildContext context) {
      
       
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
                Text("تسجيل الدخول",
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
                            EdgeInsets.only(left: 50,right: 50,top: 20,bottom: 10),
                            decoration: BoxDecoration(color: Colors.white,
                            borderRadius: BorderRadius.circular(20)),
                        child: Consumer<Control>(
                  builder: (context, val, child) {
                    return TextFormField(
                             controller: val.api.email_signin,
                            decoration: InputDecoration(  
                              hintText: "  الايميل",
                               
                              hintStyle: TextStyle(color: Colors.grey),
                              border: InputBorder.none
                            ));}),
                      ),
                      Container(
                        margin:
                            EdgeInsets.only(left: 50,right: 50,bottom: 20),
                            decoration: BoxDecoration(color: Colors.white,
                            borderRadius: BorderRadius.circular(20)),
                        child: Consumer<Control>(
                  builder: (context, val, child) {
                    return TextFormField(
                          controller: val.api.password_signin,
                            decoration: InputDecoration(
                              hintText: "كلمة السر",
                               
                              hintStyle: TextStyle(color: Colors.grey),
                              border: InputBorder.none
                                  
                            ));}),
                      ),
                      Consumer<Control>(builder: (context, val, child) {
                     return TextButton(
                          onPressed: () {
                            Navigator.of(context).pushNamed("enteremail");
                          },
                          child: Text(
                            "هل نسيت كلمة المرور",
                            style: TextStyle(
                                color: Colors.blue,
                                decoration: TextDecoration.underline),
                          ));}),
                          SizedBox(height: 300,),
                          
                             Column(children: [
                               Consumer<Control>(
                              builder: (context, val, child) {
                              return
                              MaterialButton(onPressed: () {
                                val.Signin();
                                 
                            Navigator.of(context).pushNamed("homewidget");
                              
                              },
                                child: Container(height: 50,width: 400,
                                 child: Center(
                                  child: Text("تسجيل الدخول",style: TextStyle(
                                    color: Colors.white ,), ),
                                ),
                                                             decoration: BoxDecoration( color: const Color.fromARGB(255, 0, 91, 170),
                                                             borderRadius: BorderRadius.circular(20)), ),
                              );}),
                             SizedBox( height: 20,),
                              Consumer<Control>(
                              builder: (context, val, child) {
                             return
                             MaterialButton(onPressed: () {
                                Navigator.of(context).pushNamed("register");
                             },
                               child: Container(height: 50,width: 400,
                                child: Center(
                                  child: Text(" إنشاء حساب جديد",style: TextStyle(
                                    color:  const Color.fromARGB(255, 0, 91, 170)), ),
                                ),
                               decoration: BoxDecoration(color: Colors.white,
                               borderRadius: BorderRadius.circular(20)), ),
                             );}),
                            ],),
                          
              ],
            ),
            
          ),
        ),
      );
       
    
  }
}