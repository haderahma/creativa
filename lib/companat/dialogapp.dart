import 'package:creativa_app/prov/prov.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:creativa_app/prov/api.dart';


class Dialogapp {
  chickDialog(BuildContext context, VoidCallback onPressed) {
    return showDialog(
        context: context,
        builder: (context) {
          return Consumer<Control>(builder: (context, val, child) {
            return AlertDialog(
              content: val.api.data == null
                  ? Container(
                      height: 200,
                      child: Center(child: CircularProgressIndicator()))
                  : Container(
                      height: 180,
                      child: Column(
                        children: [
                          Container(
                            height: 60,
                            width: 60,
                            child:Icon(val.api.data["status"] == true
                                ? Icons.check_circle
                                : Icons.error),
                                color: val.api.data['status'] == true
                          ? Colors.green
                          : Colors.red,
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 20),
                            child: Text(
                              val.api.data["status"] == true
                                  ? "تمت العملية بنجاح"
                                  : "خطاء ",
                              style: TextStyle(fontFamily: "Vexa"),
                            ),
                          ),
                          MaterialButton(
                            onPressed:(){ if (val.api.data["status"] == true){
                                 onPressed();
                            }
                                else{  
                                    Navigator.of(context).pop();
                                  }},
                            child: Container(
                              margin: EdgeInsets.only(top: 30),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 30, vertical: 7),
                              decoration: BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.circular(10)),
                              child: Text(
                                "ok",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 11),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
            );
          });
        });
  }
}
