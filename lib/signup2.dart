// ignore_for_file: unused_import, prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:shopping_app/buttons.dart';
import 'package:shopping_app/signup3.dart';

class SignUpPage2 extends StatefulWidget {
  const SignUpPage2({super.key});

  @override
  State<SignUpPage2> createState() => _SignUpPage();
}


class _SignUpPage extends State<SignUpPage2> {
  @override


  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    final TextEditingController emailControllerUP = TextEditingController();
    final TextEditingController passwordControllerUP = TextEditingController();

    return Scaffold(
      appBar:AppBar(backgroundColor:  Colors.white),
        body: SingleChildScrollView(
      child: Center(
          child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 100,
                  ), 
                  
                 const Icon(
                 Icons.app_registration_sharp,
                 size: 90,
                 ),
            
             
                  const Text(
                    "Create an account",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontStyle: FontStyle.italic

                    ),
                  ),

                   SizedBox(
                    height: 30,
                  ),

                  Padding(
                    padding: const EdgeInsets.only(
                        left: 10, right: 10, top: 1, bottom: 10),
                    child: TextFormField(
                      controller: emailControllerUP,

                      decoration: InputDecoration(
                        labelText: "Email Address",
                        prefixIcon: Icon(Icons.email, color: Colors.purple),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.purple),
                            borderRadius: BorderRadius.circular(50)),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.purple),
                            borderRadius: BorderRadius.circular(50)),
                      ),
                      validator: (value) {
                        if (value!.contains("@")) {
                          return null;
                        } else {
                          return "'@' is required";
                        }
                      },
                    ),
                  ),
                  
                  Padding(
                    padding:
                        EdgeInsets.only(left: 10, right: 10, top: 1, bottom: 0),
                    child: TextFormField(
                      controller: passwordControllerUP,

                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: "Password",
                        prefixIcon: Icon(Icons.lock, color: Colors.purple),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.purple),
                            borderRadius: BorderRadius.circular(50)),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.purple),
                            borderRadius: BorderRadius.circular(50)),
                      ),
                      validator: (value) {
                        if (value!.length > 7) {
                          return null;
                        } else {
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
                      if (_formKey.currentState!.validate()) {
                        FirebaseAuth.instance.createUserWithEmailAndPassword(email: emailControllerUP.text , password: passwordControllerUP.text).
                        then((value) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SignUpPage3()),
                          );
                        }).onError((error, stackTrace){
                          print("error here sir ${error.toString()}");
                        });


                      }


                    },
                    child: MyButton(
                      label: "Next",
                      onPressed: () {
                      },
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                 
                  
                ],
              )
              )
              ),
    )
    );
  }
}
