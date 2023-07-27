import 'package:flutter/material.dart';

import 'home.dart';

class CloseOrderPage extends StatefulWidget {
  const CloseOrderPage({super.key});

  @override
  State<CloseOrderPage> createState() => _CloseOrderPageState();
}

class _CloseOrderPageState extends State<CloseOrderPage> {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Container(
                  width: 500,
                  height: 200,
                  child: const Image(
                    image: AssetImage("images/ccar12.png"),
                  )),
              const SizedBox(
                height: 10,
              ),
              const Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  "You don't have a closed order yet!",
                  style: TextStyle(fontSize: 21, color: Colors.black,fontWeight: FontWeight.bold),
                  //  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(
                height: 3,
              ),
              const Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  '''All your orders will be saved here for you
       to access their state anytime.''',
                  style: TextStyle(fontSize: 15, color: Colors.black),
                  //  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              ElevatedButton(
            onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) =>   const HomePage()),);

            }, 
            
            style: ElevatedButton.styleFrom(
            backgroundColor: Colors.purple,
            elevation:5,
            
            minimumSize: const Size(150.0,50.0),
            ),
             child: const Text("Start Shopping",style:TextStyle(fontSize:24, color:Colors.white)),
              
           
           
           
           ),
            ],
          ),
        ),
      ),
    );
  }
}