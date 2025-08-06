import 'package:flutter/material.dart';

class Notifications extends StatefulWidget {
  const Notifications({super.key});

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
      body: Directionality(textDirection: TextDirection.rtl,
        child: Container(child: Column(
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
                           Text(" الإشعارات  ",style: TextStyle(
                            color:  const Color.fromARGB(255, 84, 53, 136),
                            fontSize: 18,fontWeight: FontWeight.bold
                            ),),
                            SizedBox(height: 50,),
                            Container(
                              height: 150,width: 400,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(16),
                              ),
                                child:  Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Container(margin: EdgeInsets.only(bottom: 80,right: 20),
                                  height: 40,
                                  width: 40,
                                  child: Image.asset("assets/image/man3.png",fit: BoxFit.cover,),
                                  ),
                                   SizedBox(width: 10),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Container(margin: EdgeInsets.only(top: 20),
                                            child: Text("Mohammed Ali  ", style: TextStyle(fontSize: 12))),
                                          Text("instructor", style: TextStyle(fontSize: 10, color: const Color.fromARGB(255, 0, 91, 170))),
                                          SizedBox(height: 30,),
                                          Text("لديك مشكلة في حل تاسك المحاضرة الثالثة",style: TextStyle(color: Colors.grey),)
                                         
                                        ],
                                      ),
                                     
                               
                                    ],
                                  )
                            ),
                            SizedBox(height: 10,),
                            Container(
                              height: 150,width: 400,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(16),
                              ),
                                child:  Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Container(margin: EdgeInsets.only(bottom: 80,right: 20),
                                  height: 40,
                                  width: 40,
                                  child: Image.asset("assets/image/parson.png",fit: BoxFit.cover,),
                                  ),
                                   SizedBox(width: 10),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Container(margin: EdgeInsets.only(top: 20),
                                            child: Text("Mohammed Ali  ", style: TextStyle(fontSize: 12))),
                                          Text("Creativa", style: TextStyle(fontSize: 10, color: const Color.fromARGB(255, 0, 91, 170))),
                                          SizedBox(height: 30,),
                                          Text(" تم تسجيل الإشتراك الخاص بك بنجاح",style: TextStyle(color: Colors.grey),)
                                         
                                        ],
                                      ),
                                     
                               
                                    ],
                                  )
                            ),
                            SizedBox(height: 10,),
                            Container(
                              height: 150,width: 400,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(16),
                              ),
                                child:  Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Container(margin: EdgeInsets.only(bottom: 80,right: 20),
                                  height: 40,
                                  width: 40,
                                  child: Image.asset("assets/image/man2.png",fit: BoxFit.cover,),
                                  ),
                                   SizedBox(width: 10),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Container(margin: EdgeInsets.only(top: 20),
                                            child: Text("Mohammed Ali  ", style: TextStyle(fontSize: 12))),
                                          Text("instructor", style: TextStyle(fontSize: 10, color: const Color.fromARGB(255, 0, 91, 170))),
                                          SizedBox(height: 30,),
                                          Text(" تم تسجيل الإشتراك الخاص بك بنجاح",style: TextStyle(color: Colors.grey),)
                                         
                                        ],
                                      ),
                                     
                               
                                    ],
                                  )
                            )
          ],
        ),),
      ),
    );
  }
}