import 'dart:convert';

import 'package:flutter/material.dart';

class JsonDataScreen extends StatefulWidget {
   @override
  State<JsonDataScreen> createState() => _JsonDataScreenState();
}

class _JsonDataScreenState extends State<JsonDataScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Json'),
      ),
      body: Column(
          children: [
         ListTile(
           title: Text("String to Json"),
           onTap: (){
             stringToJson();
           },
         ),
            ListTile(
           title: Text("Object to Json"),
           onTap: (){
             objectToJson();
           },
         ),
            ListTile(
           title: Text("From Json to Object"),
           onTap: (){
             fromJsonToObject();
           },
         ),

          ],
      ),
    );
  }
}
String raw_string ="I love mum";
var processed_string="";
Person my_person = new Person();
void stringToJson() {

  var processed_string = jsonEncode(raw_string);

  print("Raw string: $raw_string");
  print("Processed string: $processed_string");
  var deprocessed_string = jsonEncode(processed_string);
  print("DeProcessed string: $deprocessed_string");

}
void objectToJson(){
  processed_string=jsonEncode(my_person);
  print(my_person);
  print(my_person.name);
  //print(processed_string);
}
//method to convert from json data back to an Object
void fromJsonToObject(){
  objectToJson();
  //print(processed_string);
  Person my_person2 = Person.fromJson(processed_string);
  print(my_person2);
  print(my_person2.name);
}

class Person{
  String name = "Babirye";
  int age = 12;
  String country = "Uganda";

  //we need a method to handle the conversion of json to a string or an object.
 static Person fromJson(String _map){//we add person at the front because we are returning a Person object
   Map<String, dynamic> map = jsonDecode(_map);
   Person p = new Person();
 p.name = map['name'];
 p.age = map['age'];
 p.country = map['country'];
 return p;
  }

  //we put our toJson() method in a class that we want to convert
  toJson(){
    //in the return is where we define the rules of what we want our json to return.
  return {
   "name" : name,
   "age" : age,
   "country": country,
      };//here we return the properties.
  }
}