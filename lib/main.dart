import 'package:flutter/material.dart';
import 'package:flutter_components/screens/container_screen.dart';
import 'package:flutter_components/screens/form_screen.dart';
import 'package:flutter_components/screens/images_screen.dart';
import 'package:flutter_components/screens/multiple%20child%20widgets/column_screen.dart';
import 'package:flutter_components/screens/multiple%20child%20widgets/list_screen.dart';
import 'package:flutter_components/screens/multiple%20child%20widgets/rows_screen.dart';
import 'package:flutter_components/screens/padding_screen.dart';
import 'package:flutter_components/screens/text_screen.dart';
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
              leading: Icon(Icons.star),
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
                leading: Icon(Icons.title),
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
                leading: Icon(Icons.star),
                subtitle: Text("Introduction to flutter Text"),

              ), ListTile(
                title: Text("Multiple child widget - Column"),
                dense:true,
                onTap: () =>{
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ScreenColumn()),
                  )
                },
                leading: Icon(Icons.star),
                subtitle: Text("Introduction to flutter Text"),

              ), ListTile(
                title: Text("Multiple child widget - Lists"),
                dense:true,
                onTap: () =>{
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ScreenList()),
                  )
                },
                leading: Icon(Icons.star),
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

              ),
            ],
        ),
      ),

    );
  }
}

