import 'package:flutter/material.dart';

import 'home.dart';

class ActivePage extends StatefulWidget {
  const ActivePage({super.key});

  @override
  State<ActivePage> createState() => _ActivePageState();
}

class _ActivePageState extends State<ActivePage> {
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
                    image: AssetImage("images/voucher.png"),
                  )),
              const SizedBox(
                height: 10,
              ),
              const Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  "You currently have no available App credit",
                  style: TextStyle(fontSize: 18, color: Colors.black,fontWeight: FontWeight.bold),
                  //  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(
                height: 3,
              ),
              const Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  '''All your App credit and coupons will be 
                  displayed here''',
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
             child: const Text("Continue Shopping",style:TextStyle(fontSize:24, color:Colors.white)),
              
           
           
           
           ),
            ],
          ),
        ),
      ),
    );
  }
}