import 'package:flutter/material.dart';
 class ScreenPadding extends StatelessWidget {

   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: Text("Padding Home"),
       ),
       body: Padding(padding: EdgeInsets.only(top:20),
       child: Text("my widgets") ,),
     );
   }
 }
 