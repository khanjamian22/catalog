import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
 class LoginPage extends StatelessWidget {
   const LoginPage({Key? key}) : super(key: key);

   @override
   Widget build(BuildContext context) {
     bool _isObscure = true;
     return Material(
       color: Colors.white,
       child:Column(
         children: [
           Image.asset("assets/images/login_image.png",fit: BoxFit.cover,
           )
           ,Text("Welcome",style:TextStyle(

          fontSize: 22,fontWeight: FontWeight.bold ) ,),
           SizedBox(
               height: 20.0
           ),

          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0,horizontal: 32.0),
            child: Column(children: [
              TextFormField(
                decoration: InputDecoration(hintText: "Enter User Name",labelText: "User Name",
                ),
              ),

              TextFormField(
                obscureText: true,
                decoration: InputDecoration(hintText: "Enter User Password",labelText: "Password",
                ),
              ),
              SizedBox(
                  height: 20.0
              ),
              ElevatedButton(
                  child: Text("Login"),
              style:TextButton.styleFrom(),
              onPressed: (){
                print("button clicked");
              },)
            ],
            ),
          )
         ],
       )
     );
   }
 }
