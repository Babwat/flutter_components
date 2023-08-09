import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class ContainerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Container screen"),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: Center(
          child: Text(
            "Learning about containers",
            style: TextStyle(color: Colors.white,fontSize: 20),
          ),
        ),
        constraints: BoxConstraints.tightForFinite(width: 200),
        decoration: BoxDecoration(
         // boxShadow: BoxShadow,
          shape: BoxShape.rectangle,
           color: Colors.lime,
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(40),
           topRight: Radius.circular(50)
         ),
            border: Border.all(color: Colors.black,width: 1, style:BorderStyle.solid )
        ),
       alignment: Alignment.center,
       // color: Colors.red,
        padding: EdgeInsets.all(20),
        margin: EdgeInsets.all(20),
        transform: Matrix4.rotationY(12.5),
      ),
    );
  }
}
