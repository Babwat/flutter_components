import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class FormOtherFeildsScreen extends StatefulWidget {

  @override
  State< FormOtherFeildsScreen> createState() => _FormOtherFeildsScreenState();
}

class _FormOtherFeildsScreenState extends State< FormOtherFeildsScreen> {
  int age =10;
  //formKey: we use it to manage a form.
  final _formKey = GlobalKey<FormBuilderState>();

  my_age_increase(){
    age++;
    print("Age now is ---> ${age}");
    //the setState() method is to change the state of A constant on a screen.
    setState(() {

    });
  }
  my_age_decrease(){
    age--;
    setState(() {

    });
  }
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

                    ),
                    FormBuilderTextField(
                      //key: _emailFieldKey,
                      name: 'second_name',
                      initialValue: "babwat",
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
                        prefixText: "Ms. ",
                        // prefixIcon: Icon(Icons.message),
                        suffixIcon: Icon(Icons.message), //found at the extreme end
                        //label: Text("my custom label", style:TextStyle(color:Colors.red),),

                      ),

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
                  ],
                ))

          ],
        ),
      ),
    );

  }
}
