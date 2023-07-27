 
// ignore_for_file: unused_import, prefer_const_literals_to_create_immutables, prefer_const_constructors, sort_child_properties_last

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:shopping_app/signup2.dart';
import 'package:shopping_app/signup1.dart';
import 'buttons.dart';
import 'navigationbar.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPage();
}

class _LoginPage extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
        final TextEditingController emailController = TextEditingController();
            final TextEditingController passwordController = TextEditingController();


    return Scaffold(
      appBar:AppBar(backgroundColor:  Colors.white),

      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: 
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 100,
            ),

            Icon(
              Icons.mobile_friendly_sharp,
              size: 90,
            ),
            
            Center(
              child:
              Text("Login",
              style: TextStyle(
                fontSize: 50,
                color: Colors.black,
                fontWeight: FontWeight.bold
              ),)
            ),

            Text(
              "Please enter your username and password!",
              style: TextStyle(
                fontSize: 14,
                color: Colors.black
              )
            ),
            SizedBox(
              height: 30,
            ),

            Padding(padding: EdgeInsets.only(left: 0, right: 290, top: 0, bottom: 0),
            child: Text(
              "Email",
              style: TextStyle(
                fontSize: 16,
                color: Colors.black,
              
              ),
            ),
            ),

            
            Padding(padding: EdgeInsets.only(left: 13, right: 13, top: 2, bottom: 5),
            child: TextFormField(
             controller: emailController,

              decoration: 

              InputDecoration(
                hintText: "Email",
                prefixIcon: Icon(Icons.email,
                ),
                

                focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.purple),
                        borderRadius: BorderRadius.circular(50)),
                
                 enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.purple),
                        borderRadius: BorderRadius.circular(50)),
              ),
              validator: (value) {
                      if(value!.contains("@")){
                        return null;
                      }
                      else{
                        return "Not valid email";
                      }
                    },

              
            ),
            ),

            Padding(padding: EdgeInsets.only(left: 0, right: 290, top: 0, bottom: 0),
            child: Text(
              "Password",
              style: TextStyle(
                fontSize: 16,
                color: Colors.black
              ),
            ),
            ),


            Padding(padding: EdgeInsets.only(left: 13, right: 13, top: 0, bottom: 0),
            child: TextFormField(
              obscureText: true,
            controller: passwordController,

              decoration: 

              InputDecoration(
                hintText: "Type your password",
                prefixIcon: Icon(Icons.lock_outline,
                ),
                focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.purple),
                        borderRadius: BorderRadius.circular(50)),
                
                 enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.purple),
                        borderRadius: BorderRadius.circular(50)),
              ),
              validator: (value) {
                        if(value!.length > 7){
                          return null;
                        }
                        else{
                          return "Password should contains 8 characters or more";
                        }
                      },
            ),
            ),
            SizedBox(
              height: 30,
            ),

            InkWell(
                onTap: () {
                  if( _formKey.currentState!.validate()){
                    FirebaseAuth.instance.signInWithEmailAndPassword(email: emailController.text, password: passwordController.text)
                        .then((value) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Navigation()),
                      );

                    }).onError((error, stackTrace){
                      print("error in sign in sir ${error.toString()}");
                    });

                  }
                 
                },
                child: MyButton(label: "Login", onPressed: () {  },),
            ),
            

            SizedBox(
              height: 30,
            ),  

            Text(
              "Or login using",
              style: TextStyle(
                fontSize: 15
              )
            ),

              SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 50,
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage('images/facebook.jpg'),
                    fit: BoxFit.cover,
                    ),
                    shape: BoxShape.circle,
                  ),
                ),
                SizedBox(
                  width: 3,
                ),
                Container(
                  width: 70,
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage('images/google.jpg'),
                    fit: BoxFit.cover
                    ),
                    shape: BoxShape.circle
                  ),
                  
                ),
               
                Container(
                  width: 50,
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage('images/twitter.jpeg'),
                    fit: BoxFit.cover
                    ),
                    
                    shape: BoxShape.circle
                  ),
                )
              ],
            ),
             SizedBox(
                  height: 5,
                ),
             TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SignUpPage1()),
                    );
                  },
                  child: const Text(
                    " Don't have an account? Sign Up",
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                      
                    ),
                  ),
                ),
          ],
        ),
        ),
      
    ),
    );        
  }
}