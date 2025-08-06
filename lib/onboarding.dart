import 'package:flutter/material.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(width: double.infinity,
        child: Column( crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 100,),
            Container( 
              child: Image.asset("assets/image/creativa.png"),
            ),
            SizedBox(height: 100,),
            Text("مركز إبداع مصر الرقمي",
            style: TextStyle(fontSize: 32,fontFamily: "vexa",
            fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 30,),
             
             
               
            
                   
                  Container(height: 100,width: 380,
                  child: Text("منظومة متكاملة لدعم الابتكار وريادة الأعمال في قطاع الاتصالات وتكنولوجيا المعلومات",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 22,fontFamily: "vexa",
                  ),),
                ),
              
            SizedBox(height: 100,),
            
            MaterialButton(onPressed: () {
              Navigator.of(context).pushNamed("signin");
            },
              child: Container(height: 50,width: 250,
               
              child: Center(child: Text("إبدء معنا الان",style: TextStyle(color: Colors.white,fontFamily: "Cairo",),)),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 0, 91, 170),
                borderRadius: BorderRadius.circular(15)),),
            )
          
          ],
        ),
      ),
    );
  }
}