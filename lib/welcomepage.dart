

import 'package:flutter/material.dart';

import 'login.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
        final _formKey = GlobalKey<FormState>();
        return Scaffold(
   
        body: SingleChildScrollView( 
        child: Form(
        key: _formKey,
        child: Column(
          children: [
           Container( width: 500,
            height: 450,child: const Image(
            image: AssetImage("images/welcome.jpg"),
          )),
      
      
          const Text(
             "Hey! Welcome",
             style:TextStyle(fontSize:40, color:Colors.black,fontStyle: FontStyle.italic,fontWeight: FontWeight.bold ),
             textAlign: TextAlign.center,
          ),

          const SizedBox(
           height: 20,
          ),

          const Text(
             "Find the item you've been looking for. Sign up to get started.",
             style:TextStyle(fontSize:22, color:Colors.black),
             textAlign: TextAlign.center,
          ),

          const SizedBox(
           height: 100,
          ),


         ElevatedButton(
            onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) =>   const LoginPage()),);

            }, 
            
            style: ElevatedButton.styleFrom(
            backgroundColor: Colors.purple,
            elevation:5,
            
            minimumSize: const Size(300.0,50.0),
            ),
             child: const Text("Get Started",style:TextStyle(fontSize:24, color:Colors.white)),
              
           
           
           
           ),


         
        
         ]
         
        ),
        
      ),
    ),
        
   );
  }
}