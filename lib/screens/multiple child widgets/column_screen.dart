import 'package:flutter/material.dart';
class ScreenColumn extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Columns-screen"),
      ),
      body: Column(//row always takes a list of children
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
         Container(
           width:50,
           height: 50,
           color: Colors.pink,
         ),
          Container(
           width:50,
           height: 50,
           color: Colors.orange,
         ) ,
          Container(
           width:50,
           height: 50,
           color: Colors.purple,
         ),
          Container(
           width:50,
           height: 50,
           color: Colors.blue,
         )
                  ],
      )
    );
  }
}
