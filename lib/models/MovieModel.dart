import 'package:flutter_components/models/AppConfig.dart';
import 'package:sqflite/sqflite.dart';


import '../screens/toast_screen.dart';
import 'Utils.dart';
class MovieModel {
  static final String TABLE_NAME = 'movies';
  int id = 0;
  int rating = 0;
  String title = " ";
  String actor = " ";
  String category = " ";

  tableCreate() async {
    //await deleteDatabase(AppConfig.LOCAL_DB_PATH );
    var db = await openDatabase(AppConfig.LOCAL_DB_PATH);
    if (!db.isOpen) {
      Utils.toast("failed to open database");
      return;
    }
    try {
      //creating a database
      await db.execute('CREATE TABLE ${MovieModel.TABLE_NAME}('
          'id INTEGER PRIMARY KEY autoincrement, title TEXT,actor TEXT,category TEXT, rating INTEGER)');
      print("Table created sucessfully");
    } catch (e) {
      print("failed to create table because ${e.toString()}");
    }
  }
}