import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
class ToastScreen extends StatefulWidget {
  @override
  State<ToastScreen> createState() => _ToastScreenState();
}

class _ToastScreenState extends State<ToastScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Toastpage-notifications"),
      ) ,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
       children: [
          InkWell(
              onTap: (){
                makeToast();
              } ,
              child: Center(
              child: Text("Make a toast"
              )
          )
          ),
       ],
      ),
    );
  }
//TOAST METHOD->WE USE TOAST to show short information to the user.
  void makeToast() {
    Fluttertoast.showToast(
        msg: "This is a center SHORT toast",//can  be used to communicate to a user a short messages
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.TOP,
      timeInSecForIosWeb: 1,
      backgroundColor: Colors.limeAccent.shade200,
      textColor: Colors.white,
      fontSize: 15.0
    );
  }
}
