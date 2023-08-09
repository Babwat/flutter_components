import 'package:flutter/material.dart';

class TextScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Text screen"),
        ),
      body: Text(
        "Simple Text",
        textAlign: TextAlign.right,
        maxLines:3,//number of lines this text should show
        style: TextStyle(fontSize: 49, color: Colors.blue.shade50,
          fontWeight: FontWeight.w100,
          backgroundColor: Colors.black,
        )
      ),
         );
  }
}

