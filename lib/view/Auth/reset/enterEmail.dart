import 'package:creativa_app/companat/dialogapp.dart';
import 'package:creativa_app/prov/prov.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Enteremail extends StatefulWidget {
  const Enteremail({super.key});

  @override
  State<Enteremail> createState() => _EnteremailState();
}

class _EnteremailState extends State<Enteremail> {
  Dialogapp dialogapp = new Dialogapp();
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Directionality(
      textDirection: TextDirection.rtl,
      child: Container(
          child: SingleChildScrollView(
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
                    child:Consumer<Control>(
                              builder: (context, val, child) {
                              return IconButton(
                        onPressed: () {
                         Navigator.of(context).pop();
                        },
                        icon: Icon(Icons.keyboard_arrow_right));}),
                  ),
                  Spacer(),
                    Container(height: 40,width: 30,margin: EdgeInsets.all(20),
                    child: Image.asset("assets/image/creativalogo.png",fit: BoxFit.fill,),),
                    
                   
                  
                   
                  ],),
                  SizedBox(height: 50,),
                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(top: 50, ),
                  child: Text(
                    "إعادة تعيين كلمة المرور",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color:   const Color.fromARGB(255, 0, 91, 170),
                        fontSize: 32),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(top: 50, bottom: 20),
                  child: Text(
                    "أدخل بياناتك لتبدء",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
                        fontSize: 16),
                  ),
                ),
                /////
                  Container(
                          margin:
                              EdgeInsets.only(left: 50,right: 50,),
                              decoration: BoxDecoration(color: Colors.white,
                              borderRadius: BorderRadius.circular(20)),
                          child:Consumer<Control>(
                              builder: (context, val, child) {
                              return TextFormField(
                                 controller: val.api.email,
                              decoration: InputDecoration(
                                hintText: " الايميل  ",
                                 
                                hintStyle: TextStyle(color: Colors.grey),
                                border: InputBorder.none
                                    
                              ));}),
                        ),
                 
                      SizedBox(height: 400,),
                      Consumer<Control>(
                              builder: (context, val, child) {
                              return
                MaterialButton(
                  onPressed: () {
                     Navigator.of(context).pushNamed("verifycodepass");
                  },
                   
                  child:  Container(height: 50,width: 200,
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
        ),
    ),);
  }
}