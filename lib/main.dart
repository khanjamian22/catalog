import 'package:first_flutter/pages/home_page.dart';
import 'package:first_flutter/pages/login_page.dart';
import 'package:first_flutter/utils/routes.dart';
import 'package:first_flutter/widgets/theme.dart';
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
      theme: MYTheme.lightTheme(context),
       highContrastDarkTheme: MYTheme.darkTheme(context),
       debugShowCheckedModeBanner: false,//remove debug icon

      darkTheme: ThemeData(
        brightness: Brightness.dark
      ),
      initialRoute: MyRoutes.homeRoute,//for initial
      routes:{
        "/":(context)=>LoginPage(),//bydefault login,but initial remove kerna padega
        MyRoutes.homeRoute:(context)=>HomePage(),
        MyRoutes.loginRoute:(context)=>LoginPage()
      } ,
    );
  }
}
