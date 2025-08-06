import 'dart:convert';

import 'package:creativa_app/view/Auth/profile/profile.dart';
import 'package:creativa_app/view/Auth/register.dart';
import 'package:creativa_app/view/Auth/reset/newPass.dart';
import 'package:creativa_app/view/Auth/signin.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

class Api {
  String ip = "https://lightcoral-giraffe-475787.hostingersite.com/Creativa/public/";
String token = '';
var data= null;
  TextEditingController name = new TextEditingController();
  TextEditingController phone = new TextEditingController();
  TextEditingController email = new TextEditingController();
  TextEditingController password = new TextEditingController();
  TextEditingController password_confirmation = new TextEditingController();
  TextEditingController city = new TextEditingController();
  TextEditingController age = new TextEditingController();
  TextEditingController college = new TextEditingController();
    var Register;
   register() async {
     String uri = "$ip/api/register";
    var response = await http.post(Uri.parse(uri), headers: {
      "Accept": "application/json",
      "lang": "en"
    }, body: {
      "name": name.text,
      "phone": phone.text,
      "email": email.text,
      "password": password.text,
      "password_confirmation": password_confirmation.text,
      "city": city.text,
    });
    Register = jsonDecode(response.body);
     
  
    print("respons == ${response.body}");
  }

  TextEditingController email_signin = new TextEditingController();
  TextEditingController password_signin = new TextEditingController();
   var Signin;
   signin() async {
     
    String uri = "$ip/api/login";
    var response = await http.post(Uri.parse(uri),   body: {
      "email": email_signin.text,
      "password": password_signin.text,
    });

     if(response.statusCode == 200){
      var responseBody = jsonDecode(response.body); 
  Signin = responseBody;
  if (responseBody != null && responseBody['status'] == true) {
    token = responseBody['data']['token'];
    print("Token saved: $token");
  }
  } else {
     var responseBody = jsonDecode(response.body); 
    print("Login failed: ${responseBody['message']}");
    print("Response body: ${response.body}");
  }
  print("respons == ${response.body}");
  }
   var Logout;
   logout() async {
     
    String uri = "$ip/api/logout";
    var response = await http.post(Uri.parse(uri), headers: {
      "Authorization" : "Bearer $token"
    }   
       
    );
   Logout = jsonDecode(response.body);
   print("respons == ${response.body}");
  }

  TextEditingController code1 = new TextEditingController();
  TextEditingController code2 = new TextEditingController();
  TextEditingController code3 = new TextEditingController();
  TextEditingController code4 = new TextEditingController();
    var Verify;
   verify() async {
  
    String uri = "$ip/api/verify-otp";
    var response = await http.post(Uri.parse(uri), headers: {
      "Accept": "application/json",
    }, body: {
      "email": email.text,
      "otp": "${code1.text}${code2.text}${code3.text}${code4.text}"
    });
   Verify = jsonDecode(response.body);
   print("respons == ${response.body}");
    
  }
    var ForgetPassword;
    forgetPassword() async {
   
    String uri = "$ip/api/forget-password";
    var response = await http.post(Uri.parse(uri),body: {
      "email": email.text,
    }

    ) ;  
    ForgetPassword = jsonDecode(response.body);
     print("respons == ${response.body}");
  } 
  var Reset;
   reset() async {
  
    String uri = "$ip/api/reset-password";
    var response = await http.post(Uri.parse(uri),body: {
      "email": email.text,  
      "password": password.text,
      "password_confirmation":  password_confirmation.text,
    }

    ) ;  
     Reset = jsonDecode(response.body);
     print("respons == ${response.body}");
  } 
  var Resendcode;
    resendcode() async {
   
    String uri = "$ip/api/resend-code";
    var response = await http.post(Uri.parse(uri),headers: {
      "lang": "ar"},body: {
      "email": "${email.text}",
    }

    ) ;  
    Resendcode = jsonDecode(response.body);
     print("respons == ${response.body}");
  }
  var Profile;
   profile() async{
   
    String uri = "$ip/api/profile";
    var response = await http.get(Uri.parse(uri),headers: {
      "Authorization": "Bearer $token",
    }
    );
     Profile = jsonDecode(response.body);
      print("respons == ${response.body}");
  }
  var updeteprofile;
   updateProfile() async{

    String uri = "$ip/api/profile";
    var response = await http.post(Uri.parse(uri),headers: {
      "Authorization": "Bearer $token",
    },body: {
      "_method" : "put",
      "name" : name.text,
      "email" : email.text,
      "city" : city.text,
      "phone" : phone.text,
       "password": password.text,
       "password_confirmation": password_confirmation.text,
    }

    );
     updeteprofile = jsonDecode(response.body);
      print("respons == ${response.body}");
  }
  var allCategories;
   allcategories() async{
 
    String uri = "$ip/api/categories";
    var response = await http.get(Uri.parse(uri),
     headers: {
    "Authorization": "Bearer $token",
    "Accept": "application/json",
      "lang": "en",
    },
    
    );
     allCategories = jsonDecode(response.body);
      print("respons == ${response.body}");
  }
  var addCategories;
   addctegories() async{
 
    String uri = "$ip/api/categories";
    var response = await http.post(Uri.parse(uri),
    headers: {
      "Authorization": "Bearer $token",
      "Accept": "application/json",
      "lang": "en"
    },
    body: {
    "name": name.text,
    });
    addCategories = jsonDecode(response.body);
      print("respons == ${response.body}");
      // قم بمسح قيمة حقل الاسم بعد إرسال الطلب
     name.clear(); 
  }
  var categoriesCourses;
  categoriescourses() async{
 
    String uri = "$ip/api/categories/2";
    var response = await http.get(Uri.parse(uri),headers: {
      "Authorization": "Bearer $token",
      "Accept": "application/json",
      "lang": "en"
    },
    );
    categoriesCourses = jsonDecode(response.body);
     print("respons == ${response.body}");
  }
  var allBanners;
  allbanners() async{
 
    String uri = "$ip/api/banners";
    var response = await http.get(Uri.parse(uri),headers: {
    "Authorization": "Bearer $token",
      "Accept": "application/json",
      "lang": "en"
    },
    );
    allBanners =jsonDecode(response.body);
     print("respons == ${response.body}");
  }
  var addBanners;
  addbanners() async{
    String uri = "$ip/api/banners";
    var response = await http.post(Uri.parse(uri),headers: {
    "Authorization": "Bearer $token",
      "Accept": "application/json",
      "lang": "en"
    }, body: {
      "image": "image_data_here"
    }
    );
    addBanners =jsonDecode(response.body);
     print("respons == ${response.body}");
  }
  var allInstractors;
  allinstractors() async{
    String uri ="$ip/api/instractors";
    var response = await http.get(Uri.parse(uri),headers: {
      "Authorization": "Bearer $token",
    });
    allInstractors =jsonDecode(response.body);
     print("respons == ${response.body}");
  }
  var addInstractors;
  addinstractors() async{
    String uri ="$ip/api/instractors";
    var response = await http.post(Uri.parse(uri),headers: {
      "Authorization": "Bearer $token",
    },
    body:{
       "name" : name.text,
       "phone" : phone.text,  
        "image": "image_data_here"
    }
    );
    addInstractors =jsonDecode(response.body);
     print("respons == ${response.body}");
  }
  var allCourses;
  allcourses() async{
 
      String uri ="$ip/api/courses";
    var response = await http.get(Uri.parse(uri),headers: {
      "Authorization": "Bearer $token",
    },
    );
    allCourses = jsonDecode(response.body);
     print("respons == ${response.body}");
  }
   var addCourses;
  addcourses() async{
      String uri ="$ip/api/courses";
    var response = await http.post(Uri.parse(uri),headers: {
      "Authorization": "Bearer $token",
      "Accept": "application/json",
      "lang": "en"
    },
    body: {
      "name": name.text,
      "catagory_id": "3",
      "instractory": "3",
    }
    );
    addCourses = jsonDecode(response.body);
     print("respons == ${response.body}");
  }
  var myCourses;
  mycourses() async{

      String uri ="$ip/api/my-courses";
    var response = await http.get(Uri.parse(uri),headers: {
      "Authorization": "Bearer $token",
      "Accept": "application/json",
      "lang": "en"
    },
    );
    myCourses = jsonDecode(response.body);
     print("respons == ${response.body}");
  }
 var reqeustBook;
  reqeustbook() async{

      String uri ="$ip/api/request-books";
    var response = await http.post(Uri.parse(uri),headers: {
      "Authorization": "Bearer $token",
      "Accept": "application/json",
      "lang": "en"
    },
    body: {
      "course_id": "2",
      "name": name.text,
      "phone": phone.text,
      "email": email.text,
      "city": city.text,
      "age": age.text,
      "college": college.text
       
    }
    );
    reqeustBook = jsonDecode(response.body);
     print("respons == ${response.body}");
  }
    var allSections;
  allsections() async{
      String uri ="$ip/api/sections";
    var response = await http.get(Uri.parse(uri),headers: {
      "Authorization": "Bearer $token",
    },
    );
    allSections = jsonDecode(response.body);
     print("respons == ${response.body}");
  }
  var addSections;
  addsections() async{
      String uri ="$ip/api/sections";
    var response = await http.post(Uri.parse(uri),headers: {
      "Authorization": "Bearer $token",
    },
    body: {
      "course_id": "3",
      "name": name.text,
      "lessons": jsonEncode([
       "Creating Interactive Prototypes",
       "Using Smart Animate Transitions",
        "Testing and Sharing Prototypes",
    ]),
    }
    );
    addSections = jsonDecode(response.body);
     print("respons == ${response.body}");
  }
  
  var allFavorite;
  allfavorite() async{
    String uri ="$ip/api/favorites";
    var response = await http.get(Uri.parse(uri),headers: {
      "Authorization": "Bearer $token",
      "Accept": "application/json",
      "lang": "en"
    },
    );
    allFavorite = jsonDecode(response.body);
     print("respons == ${response.body}");
  }
   var addFavorite;
  addfavorite() async{
      String uri ="$ip/api/favorites";
    var response = await http.post(Uri.parse(uri),headers: {
      "Authorization": "Bearer $token",
      "Accept": "application/json",
      "lang": "en"
    },body: {
      "course_id": "1",
    }
    );
    addFavorite = jsonDecode(response.body);
     print("respons == ${response.body}");
  }
  var removeFavorite;
  removefavorite() async{
      String uri ="$ip/api/favorites/10";
    var response = await http.delete(Uri.parse(uri),headers: {
      "Authorization": "Bearer $token",
      "Accept": "application/json",
      "lang": "en"
    },
    );
    removeFavorite = jsonDecode(response.body);
     print("respons == ${response.body}");
  }
    var addComplain;
  addcomplain() async{
      String uri ="$ip/api/complains";
    var response = await http.post(Uri.parse(uri),headers: {
      "Authorization": "Bearer $token",
      "Accept": "application/json",
      "lang": "en"
    },body: {
      "phone": phone.text,
      "message": "كورس 100%"
    }
    );
    addComplain = jsonDecode(response.body);
    print("respons == ${response.body}");
  }
   var allNotification;
  allnotification() async{
      String uri ="$ip/api/notifications";
    var response = await http.get(Uri.parse(uri),headers: {
      "Authorization": "Bearer $token",
      "Accept": "application/json",
      "lang": "en"
    },  
    );
    allNotification = jsonDecode(response.body);
     print("respons == ${response.body}");
  }
  var readNotification;
  readnotification() async{
      String uri ="$ip/api/notifications/1";
    var response = await http.get(Uri.parse(uri),headers: {
      "Authorization": "Bearer $token",
      "Accept": "application/json",
      "lang": "en"
    }, 
    );
    readNotification = jsonDecode(response.body);
     print("respons == ${response.body}");
  }

}
