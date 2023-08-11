import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class FormValidationScreen extends StatefulWidget {

  @override
  State< FormValidationScreen> createState() => _FormValidationScreenState();
}

class _FormValidationScreenState extends State< FormValidationScreen> {

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
                      decoration: const InputDecoration(
                        labelText: 'First name',
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
                    FormBuilderTextField(
                      //key: _emailFieldKey,
                      name: 'second_name',
                      //initialValue: "babwat",
                      textAlign: TextAlign.justify,
                      textCapitalization: TextCapitalization.characters,
                      readOnly: false,//user cannot edit but rather view.
                      enabled: true,//one can use the keyboard.
                      decoration: const InputDecoration(
                        labelText: 'Second name',
                        icon: Icon(Icons.person_3_outlined),
                        iconColor: Colors.orange,
                        hintText: "Please enter your second name",
                        helperText: "Write your name as it appears on your id",
                        helperStyle: TextStyle(color: Colors.green),
                        helperMaxLines: 2,
                        isDense: true,
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
                  FormBuilderDateTimePicker(
                      name: "dob",
                      initialValue: DateTime.now(),
                      inputType: InputType.both,
                      decoration: InputDecoration(
                        label: Text("Pick time and date"),
                        icon: Icon(Icons.supervised_user_circle_rounded),
                      ),

                  ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      child: ElevatedButton(
                        onPressed: () {
                          // Validate returns true if the form is valid, or false otherwise.
                          if (_formKey.currentState!.validate()) {
                            // If the form is valid, display a snackbar. In the real world,
                            // you'd often call a server or save the information in a database.
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(content: Text('submitting data')),
                            );
                          }
                        },
                        child: const Text('Submit'),
                      ),
                    ),
                  ],
                ))

          ],
        ),
      ),
    );

  }
}
