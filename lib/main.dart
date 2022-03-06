import 'package:first_flutter/pages/home_page.dart';
import 'package:first_flutter/pages/login_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return MaterialApp(

      //home:HomePage(),//remove cause for routes
      themeMode: ThemeMode.light,//for change theme page
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,//for change status and app bar color
         //primaryTextTheme: GoogleFonts.latoTextTheme()
         fontFamily: GoogleFonts.lato().fontFamily
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark
      ),
      initialRoute: "/login",//for initial
      routes:{
        "/":(context)=>LoginPage(),//bydefault login,but initial remove kerna padega
        "/home":(context)=>HomePage(),
        "/login":(context)=>LoginPage()
      } ,
    );
  }
}
