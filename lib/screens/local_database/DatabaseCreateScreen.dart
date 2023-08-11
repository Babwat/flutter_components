import 'package:flutter/material.dart';
import 'package:flutter_components/models/MovieModel.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class DatabaseCreateScreen extends StatefulWidget {

  @override
  State< DatabaseCreateScreen> createState() => _DatabaseCreateScreenState();
}

class _DatabaseCreateScreenState extends State< DatabaseCreateScreen> {
  MovieModel myMovie =  MovieModel();
  int age =10;
  //formKey: we use it to manage a form.
  final _formKey = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Forms and other fields"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children:[
            SizedBox(height: 20), // Add space above the form
            FormBuilder(
                key: _formKey, //can use this key to manage the whole form.
                child: Column(
                  children: [
                    FormBuilderTextField(
                      //key: _emailFieldKey,
                      name: 'first_name',
                      onTap: ()=>{
                        print("Focused on first name....")
                      },
                      autofocus: true,
                      textInputAction: TextInputAction.done,
                      keyboardType: TextInputType.multiline,
                      decoration:  InputDecoration(
                        labelText: 'First name',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        icon: Icon(Icons.person_3_outlined),
                        iconColor: Colors.orange,
                        isDense: false,
                      ),
                      // The validator receives the text that the user has entered.
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter some text';
                        }
                        return null;
                      },

                    ),
                    SizedBox(height: 20), // Add space above the form

                    FormBuilderTextField(
                      //key: _emailFieldKey,
                      name: 'second_name',
                      initialValue: "babwat",
                      textAlign: TextAlign.justify,
                      textCapitalization: TextCapitalization.characters,
                      readOnly: false,//user cannot edit but rather view.
                      enabled: true,//one can use the keyboard.
                      decoration: InputDecoration(
                        labelText: 'Second name',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        icon: Icon(Icons.person_3_outlined),
                        iconColor: Colors.orange,
                        hintText: "Please enter your second name",
                        helperText: "Write your name as it appears on your id",
                        helperStyle: TextStyle(color: Colors.green),
                        helperMaxLines: 2,
                        isDense: true,
                        prefixText: "Ms. ",
                        // prefixIcon: Icon(Icons.message),
                        suffixIcon: Icon(Icons.message), //found at the extreme end
                        //label: Text("my custom label", style:TextStyle(color:Colors.red),),
                      ),
                      // The validator receives the text that the user has entered.
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter some text';
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 20), // Add space above the form

                    FormBuilderDateTimePicker(
                      name: "dob",
                      initialValue: DateTime.now(),
                      inputType: InputType.both,
                      decoration: InputDecoration(
                        label: Text("Pick time and date"),
                        icon: Icon(Icons.supervised_user_circle_rounded),
                      ),

                  ),
                    SizedBox(height: 20), // Add space between the text field and the button
                    //creating buttons in flutter
                    ElevatedButton(
                      onPressed: (){
                      myMovie.tableCreate();
                      },
                      style: ElevatedButton.styleFrom(
                        textStyle: TextStyle(fontSize: 18),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: Text("CREATE TABLE"),
                    ),
                    
                  ],
                )
            )

          ],
        ),
      ),
    );

  }
}
