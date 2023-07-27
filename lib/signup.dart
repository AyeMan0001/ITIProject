// ignore_for_file: unused_import, prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:shopping_app/buttons.dart';

import 'navigationbar.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPage();
}

class _SignUpPage extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    return Scaffold(
        body: SingleChildScrollView(
      child: Center(
          child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 190,
                  ),
                  Text(
                    "Create an account",
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: TextFormField(
                      decoration: InputDecoration(
                        labelText: "Email Address",
                        prefixIcon: Icon(Icons.email),
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
                    padding: EdgeInsets.only(
                        left: 10, right: 10, top: 1, bottom: 10),
                    child: TextFormField(
                      decoration: InputDecoration(
                        labelText: "Username",
                        prefixIcon: Icon(Icons.person),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.purple),
                            borderRadius: BorderRadius.circular(50)),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.purple),
                            borderRadius: BorderRadius.circular(50)),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.only(left: 10, right: 10, top: 1, bottom: 0),
                    child: TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: "Password",
                        prefixIcon: Icon(Icons.lock),
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
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Navigation()),
                        );
                      }
                    },
                    child: MyButton(
                      label: "Login",
                      onPressed: () {},
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Text(
                    "Already have an account? ",
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Continue with",
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
                          image: DecorationImage(
                            image: AssetImage('images/facebook.jpg'),
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
                            image: DecorationImage(
                                image: AssetImage('images/google.jpg'),
                                fit: BoxFit.cover),
                            shape: BoxShape.circle),
                      ),
                      Container(
                        width: 50,
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('images/twitter.jpeg'),
                                fit: BoxFit.cover),
                            shape: BoxShape.circle),
                      )
                    ],
                  )
                ],
              ))),
    ));
  }
}
