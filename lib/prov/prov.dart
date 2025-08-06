import 'package:creativa_app/prov/api.dart';
import 'package:creativa_app/view/Auth/signin.dart';
import 'package:flutter/material.dart';

class Control extends ChangeNotifier {
  Api api = new Api();
  
  Register() async {
    await api.register();
    notifyListeners();
  }

  Signin() async {
    await api.signin();
    notifyListeners();
  }
  Logout() async {
    await api.logout();
    notifyListeners();
  }
  Verify() async {
    await api.verify();
    notifyListeners();
  }
  ForgetPassword() async {
    await api.forgetPassword();
    notifyListeners();
  }
  Reset() async {
    await api.reset();
    notifyListeners();
  }
   Resendcode() async {
    await api.resendcode();
    notifyListeners();
   }
   Profile() async {
    await api.profile();
    notifyListeners();
   }
   UpdataProfile() async {
     await api.updateProfile();
    notifyListeners();
   }
   allcategories() async {
     await api.allcategories();
    notifyListeners();
   }
   addctegories() async {
    await api.addctegories();
    notifyListeners();
   }
    categoriescourses() async {
     await api.categoriescourses();
    notifyListeners();
    }
    allbanners() async {
     await api.allbanners();
    notifyListeners();
    }
    addbanners() async {
     await api.addbanners();
    notifyListeners();
    }
     allinstractors() async {
      await api.allinstractors();
    notifyListeners();
     }
     addinstractors() async {
      await api.addinstractors();
    notifyListeners();  
     }
     allcourses() async {
      await api.allcourses();
    notifyListeners();    
     }
     addcourses() async {
       await api.addcourses();
    notifyListeners(); 
     }
     mycourses() async {
       await api.mycourses();
    notifyListeners(); 
     }
     reqeustbook() async {
    await api.reqeustbook();
    notifyListeners();   
     }
      allsections() async {
    await api.allsections();
    notifyListeners();    
      }
    addsections() async {
  await api.addsections();
    notifyListeners();    
    } 
    allfavorite() async {
  await api.allfavorite();
    notifyListeners();  
   } 
   addfavorite() async {
    await api.addfavorite();
    notifyListeners();
   } 
   removefavorite() async {
   await api.removefavorite();
    notifyListeners();  
   }
   addcomplain() async {
   await api.addcomplain();
    notifyListeners(); 
   }
   allnotification() async {
   await api.allnotification();
    notifyListeners(); 
   }
   readnotification() async {
  await api.readnotification();
    notifyListeners();   
   }  
}
