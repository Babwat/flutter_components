import 'package:flutter/material.dart';
import 'package:flutter_components/screens/JsonData_Screen.dart';
import 'package:flutter_components/screens/container_screen.dart';
import 'package:flutter_components/screens/form_screen.dart';
import 'package:flutter_components/screens/formotherfileds_screen.dart';
import 'package:flutter_components/screens/formvalidation_screen.dart';
import 'package:flutter_components/screens/images_screen.dart';
import 'package:flutter_components/screens/local_database/DatabaseCreateScreen.dart';
import 'package:flutter_components/screens/login_screen.dart';
import 'package:flutter_components/screens/multiple%20child%20widgets/column_screen.dart';
import 'package:flutter_components/screens/multiple%20child%20widgets/list_screen.dart';
import 'package:flutter_components/screens/multiple%20child%20widgets/rows_screen.dart';
import 'package:flutter_components/screens/padding_screen.dart';
import 'package:flutter_components/screens/tabcontroller_screen.dart';
import 'package:flutter_components/screens/text_screen.dart';
import 'package:flutter_components/screens/toast_screen.dart';


void main() {
  runApp(const MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My simple App',
       home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Home Page"),
        ),
        body: ListView(
            children: [
            ListTile(
              title: Text("Text"),
              dense:true,
              onTap: () =>{
               Navigator.push(context,
                   MaterialPageRoute(builder: (context) => TextScreen()),
               )
              },
              leading: Icon(Icons.message),
              subtitle: Text("Introduction to flutter Text"),

            ),
              ListTile(
                title: Text("Container"),
                dense:true,
                onTap: () =>{
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ContainerScreen()),
                  )
                },
                leading: Icon(Icons.rectangle),
                subtitle: Text("Introduction to flutter container"),

              ),
              ListTile(
                title: Text("Padding - Layout"),
                dense:true,
                onTap: () =>{
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ScreenPadding()),
                  )
                },
                leading: Icon(Icons.star),
                subtitle: Text("Introduction to flutter Text"),

              ), ListTile(
                title: Text("Multiple child widget - Row"),
                dense:true,
                onTap: () =>{
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ScreenRow()),
                  )
                },
                leading: Icon(Icons.table_rows_outlined),
                subtitle: Text("Introduction to flutter Text"),

              ), ListTile(
                title: Text("Multiple child widget - Column"),
                dense:true,
                onTap: () =>{
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ScreenColumn()),
                  )
                },
                leading: Icon(Icons.view_column_outlined),
                subtitle: Text("Introduction to flutter Text"),

              ), ListTile(
                title: Text("Multiple child widget - Lists"),
                dense:true,
                onTap: () =>{
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ScreenList()),
                  )
                },
                leading: Icon(Icons.list_alt_rounded),
                subtitle: Text("Introduction to flutter ImageScreen"),

              ), ListTile(
                title: Text("Multiple child widget - ImageScreen"),
                dense:true,
                onTap: () =>{
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ImageScreen()),
                  )
                },
                leading: Icon(Icons.star),
                subtitle: Text("Introduction to flutter ImageScreen"),

              ),ListTile(
                title: Text("Multiple child widget - Forms"),
                dense:true,
                onTap: () =>{
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context) => FormScreen()),
                  )
                },
                leading: Icon(Icons.star),
                subtitle: Text("Introduction to flutter FormScreen"),

              ),ListTile(
                title: Text("Forms other fields"),
                leading:Icon(Icons.other_houses),
                trailing: Icon(Icons.chevron_right),
                dense:true,
                onTap: () =>{
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context) =>  FormOtherFeildsScreen()),
                  )
                },
                subtitle: Text("Other fields in forms"),

              ),ListTile(
                title: Text("Forms Validation"),
                leading:Icon(Icons.other_houses),
                trailing: Icon(Icons.chevron_right),
                dense:true,
                onTap: () =>{
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context) =>  FormValidationScreen()),
                  )
                },
                subtitle: Text("Forms Validation..."),

              ),ListTile(
                title: Text("Notifications- Toast"),
                dense:true,
                onTap: () =>{
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ToastScreen()),
                  )
                },
                leading: Icon(Icons.notification_add_outlined),
                subtitle: Text("Introduction to flutter pop ups"),

              ),ListTile(
                title: Text("TabController"),
                dense:true,
                onTap: () =>{
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context) => TabControllerScreen()),
                  )
                },
                leading: Icon(Icons.tab),
                subtitle: Text("Introduction to TabControllers"),

              ),ListTile(
                title: Text("JSON"),
                dense:true,
                onTap: () =>{
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context) => JsonDataScreen()),
                  )
                },
                leading: Icon(Icons.abc),
                subtitle: Text("Introduction to JSON data format"),

              ),ListTile(
                title: Text("Login page"),
                dense:true,
                onTap: () =>{
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context) =>  LoginPage()),
                  )
                },
                leading: Icon(Icons.abc),
                subtitle: Text("Our login page"),

              ),ListTile(
                title: Text("Database Screen"),
                dense:true,
                onTap: () =>{
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context) =>  DatabaseCreateScreen()),
                  )
                },
                leading: Icon(Icons.table_chart),
                subtitle: Text("Our DatabaseCreateScreen page"),

              ),
            ],
        ),
      ),

    );
  }
}

