import 'package:flutter/material.dart';
//function to return a widget(can be reused)
Widget single_list_item(String country,String capital,String residence){
  return Container(
    padding: EdgeInsets.only(left: 20, right:20, top:15, bottom: 15),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("${country}",
          textAlign: TextAlign.start,
          style:TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.purple,
            fontSize: 15,
          ),
        ),
        Text("${capital}",
          textAlign: TextAlign.start,
          style:TextStyle(
            fontWeight: FontWeight.normal,
            color: Colors.grey.shade700,
            fontSize: 10,
          ),
        ),Text("${residence}",
          textAlign: TextAlign.start,
          style:TextStyle(
            fontWeight: FontWeight.normal,
            color: Colors.purple.shade600,
            fontSize: 8,
          ),
        )
      ],

    ),

  );
}