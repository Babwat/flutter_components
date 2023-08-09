import 'package:flutter/material.dart';

import '../widgets-components/my_widgets.dart';
class ScreenList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Screen list"),
      ),
      //ListView is better than column since we can scroll and we have no limit
      body: ListView(
        children: [
          single_list_item("Uganda","Kampala","kibuli"),
          single_list_item("Kenya","Nairobi","kidemi"),
          single_list_item("Rwanda","Kigali","kigs"),     single_list_item("Uganda","Kampala","kibuli"),
          single_list_item("Kenya","Nairobi","kidemi"),
          single_list_item("Rwanda","Kigali","kigs"),     single_list_item("Uganda","Kampala","kibuli"),
          single_list_item("Kenya","Nairobi","kidemi"),
          single_list_item("Rwanda","Kigali","kigs"),     single_list_item("Uganda","Kampala","kibuli"),
          single_list_item("Kenya","Nairobi","kidemi"),
          single_list_item("Rwanda","Kigali","kigs"),     single_list_item("Uganda","Kampala","kibuli"),
          single_list_item("Kenya","Nairobi","kidemi"),
          single_list_item("Rwanda","Kigali","kigs"),     single_list_item("Uganda","Kampala","kibuli"),
          single_list_item("Kenya","Nairobi","kidemi"),
          single_list_item("Rwanda","Kigali","kigs"),     single_list_item("Uganda","Kampala","kibuli"),
          single_list_item("Kenya","Nairobi","kidemi"),
          single_list_item("Rwanda","Kigali","kigs"),     single_list_item("Uganda","Kampala","kibuli"),
          single_list_item("Kenya","Nairobi","kidemi"),
          single_list_item("Rwanda","Kigali","kigs"),     single_list_item("Uganda","Kampala","kibuli"),
          single_list_item("Kenya","Nairobi","kidemi"),
          single_list_item("Rwanda","Kigali","kigs"),     single_list_item("Uganda","Kampala","kibuli"),
          single_list_item("Kenya","Nairobi","kidemi"),
          single_list_item("Rwanda","Kigali","kigs"),     single_list_item("Uganda","Kampala","kibuli"),
          single_list_item("Kenya","Nairobi","kidemi"),
          single_list_item("Rwanda","Kigali","kigs"),     single_list_item("Uganda","Kampala","kibuli"),
          single_list_item("Kenya","Nairobi","kidemi"),
          single_list_item("Rwanda","Kigali","kigs"),     single_list_item("Uganda","Kampala","kibuli"),
          single_list_item("Kenya","Nairobi","kidemi"),
          single_list_item("Rwanda","Kigali","kigs"),
        ],
      ) ,
    );
  }
}
