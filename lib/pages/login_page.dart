import 'package:first_flutter/utils/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
 class LoginPage extends StatefulWidget {
   const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
   bool obserbText=false;
   String name="";
   bool changeButton=false;
   final _formKey=GlobalKey<FormState>();
   moveToHome(BuildContext context) async {
     if(_formKey.currentState!.validate()) {
       setState(() {
         changeButton = true;
       });
       await Future.delayed(
           Duration(seconds: 1)); //for stope one second and go anywhere........
       //Navigator.pushNamed(context, MyRoutes.homeRoute);or
       await Navigator.pushNamed(
           context, MyRoutes.homeRoute); //when user back login button
       setState(() {
         changeButton = false;
       });
     }
   }
   @override
   Widget build(BuildContext context) {
     return Material(
       color: Colors.white,
       child:SingleChildScrollView(
         child: Form(
           key: _formKey,
           child: Column(
             children: [
               Image.asset("assets/images/login_image.png",fit: BoxFit.cover,
                // height: 200,//for checking scrolling
               )
               ,Text("Welcome $name",style:TextStyle(

              fontSize: 28,fontWeight: FontWeight.bold ) ,),
               SizedBox(
                   height: 20.0
               ),

              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0,horizontal: 32.0),
                child: Column(children: [
                  TextFormField(

                    decoration: InputDecoration(hintText: "Enter User Name",labelText: "User Name",
                    ),
                    validator: (String? value){
                      if(value != null && value.isEmpty){
                        return "User can't Empty";
                      }
                      return null;
                    },
                    onChanged:(value){//change when we enter edit text..
                      name=value;
                      setState(() {//for changig hole ui after use stateful widget
                      });
                    },
                  ),

                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "Enter User Password",
                      labelText: "Password",
                    ),
                      validator: (String ? value)
                      {
                        if(value!=null && value.isEmpty){
                          return "Password can,t Empty";
                        }
                        else if(value!.length<6){
                          return "password length should be atleast 6 char";
                        }
                        return null;
                      },
                  ),
                  SizedBox(
                      height: 40.0//gap between login btn
                  ),
                 Material(
                   borderRadius: BorderRadius.circular(changeButton ? 50 : 8),
                   color: Colors.deepPurple,
                   child: InkWell(//for clickable to container...
                     //splashColor: Colors.red,//ripple effect
                     onTap:()=> moveToHome(context),
                     child: AnimatedContainer(
                       duration: Duration(seconds: 1),//for create login button
                       width: changeButton ? 50 :150,//true h to 50 else 150 hogi width
                       height: 50,
                       //color: Colors.deepPurple,//or decoration ke Inside de do...
                       alignment: Alignment.center,
                       child:changeButton ? Icon(
                           Icons.done,
                           color: Colors.white,
                           )
                           :Text("Login",
                         style:TextStyle(
                           color: Colors.white,
                           fontWeight: FontWeight.bold,
                           fontSize: 18
                         ),
                       ), //ab ise material me rakh do
                     ),
                   ),
                 )
                ],
                ),
              )
             ],
           ),
         ),
       )
     );
   }
}
