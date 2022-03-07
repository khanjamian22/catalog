import 'package:flutter/material.dart';

import '../widgets/drawer.dart';


class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     final int day=30;
     final String name="akram khan";
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App"),
       /* leading: InkWell(
        onTap: (){
            Navigator.pop(context);
            },
       child: Icon(
         Icons.arrow_back_ios,color: Colors.red,
       ), )*/
          ),


      body:Center(
        child: Container(
          child: Text("welcome to $day days of flutter class by $name"),

        ),
      ),
      drawer: MyDrawer(),//custom drawer

    );
  }
}
