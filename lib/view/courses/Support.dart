import 'package:flutter/material.dart';

class Support extends StatefulWidget {
  const Support({super.key});

  @override
  State<Support> createState() => _SupportState();
}

class _SupportState extends State<Support> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
      body: Directionality(textDirection: TextDirection.rtl,
       child: Container(child: 
          Column(
            children: [
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
                       
                       SizedBox(width: 20,),
                         Container(margin: EdgeInsets.only(left: 20),
                        height: 40,
                        width: 40,
                        child: Image.asset("assets/image/parson.png",fit: BoxFit.cover,),
                        ),],),
                        Text("مرحبا بك",style: TextStyle(
                          color: const Color.fromARGB(255, 0, 91, 170),
                          fontSize: 18,fontWeight: FontWeight.bold
                          ),),
                        SizedBox(height:10 ,),
                        Text("!كيف نقدر نساعدك ؟",style: TextStyle(
                          color: const Color.fromARGB(255, 0, 91, 170),
                          fontSize: 18,fontWeight: FontWeight.bold
                          ),),
                        SizedBox(height:100 ,),
                        Text("! نرد عليك في خلال 24 ساعة ",style: TextStyle(
                          color: const Color.fromARGB(255, 84, 53, 136),

                        ),),
                         
                        SizedBox(height:10 ,),
                        Container(
                                margin:
                                    EdgeInsets.only(left: 20,right: 20,top: 10),
                                    decoration: BoxDecoration(color: Colors.white,
                                    borderRadius: BorderRadius.circular(20)),
                                child: TextFormField(
                                    decoration: InputDecoration(
                                      hintText: " أدخل رقم هاتفك ",
                                      
                                      hintStyle: TextStyle(color: Colors.grey),
                                      border: InputBorder.none
                                          
                                    )),
                              ),
                              SizedBox(height: 10,),
                        Container(
                                margin:
                                    EdgeInsets.only(left: 20,right: 20,top: 10),
                                    decoration: BoxDecoration(color: Colors.white,
                                    borderRadius: BorderRadius.circular(20)),
                                child: TextFormField(maxLines: 6,
                                    decoration: InputDecoration(
                                      hintText: " أدخل الشكوي",
                                      
                                      hintStyle: TextStyle(color: Colors.grey),
                                      border: InputBorder.none
                                          
                                    )),
                              ),
                              SizedBox(height: 200,),
                              Container(height: 50,width: 150,
                              child: Center(
                                child: Text("إرسال الشكوي",style: TextStyle(
                                  color: Colors.white
                                ),),
                              ),
                              decoration: BoxDecoration(
                                color:  const Color.fromARGB(255, 0, 91, 170),
                                borderRadius: BorderRadius.circular(25)
                              ),)

            ],
          ),
       ),)
    );
  }
}