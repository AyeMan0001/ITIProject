// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class ElectronicsPage extends StatefulWidget{
  const ElectronicsPage({super.key});

  @override
  State<ElectronicsPage> createState() => _ElectronicsPage();
}

class _ElectronicsPage extends State<ElectronicsPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              SizedBox(height: 250,),
              Padding(padding: EdgeInsets.only(left: 30.0),
              child: Container(
                height: 200.0,
                width: 150.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      spreadRadius: 3.0,
                      blurRadius: 5.0
                    )
                  ],
                  image: DecorationImage(image: AssetImage('images/computers.jpeg'),
                  fit: BoxFit.fill
                  )
                )
              ),
              ),
              Padding(padding: EdgeInsets.only(left: 50.0),
              child: Container(
                height: 200.0,
                width: 150.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      spreadRadius: 3.0,
                      blurRadius: 5.0
                    )
                  ],
                  image: DecorationImage(image: AssetImage('images/accessories.jpeg'),
                  fit: BoxFit.fitHeight,
                  
                  ),
                )
              ),
              ),
            ],
            
          ),
          Row(
            children: [
              SizedBox(width: 50.0,
              ),
              Text(
            "Devices",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold
            ),
          ),
          SizedBox(width: 90,),
          Text(
            "Accessories",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold
            ),
          ),
            ],
          ),
          SizedBox(height: 30),
          Row(
            children: [
              Padding(padding: EdgeInsets.only(left: 30.0),
              child: Container(
                height: 200.0,
                width: 150.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      spreadRadius: 3.0,
                      blurRadius: 5.0
                    )
                  ],
                  image: DecorationImage(image: AssetImage('images/smart.jpeg'),
                  fit: BoxFit.fitHeight
                  )
                )
              ),
              ),
              Padding(padding: EdgeInsets.only(left: 50.0),
              child: Container(
                height: 200.0,
                width: 150.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      spreadRadius: 3.0,
                      blurRadius: 5.0
                    )
                  ],
                  image: DecorationImage(image: AssetImage('images/wearables.jpeg'),
                  fit: BoxFit.fitHeight,
                  
                  ),
                )
              ),
              ),
            ],
          ),
          SizedBox(height: 20),
          Row(
            children: [
              SizedBox(width: 20.0,
              ),
              Text(
            "Smart Devices",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold
            ),
          ),
          SizedBox(width: 60,),
          Text(
            "Wearables",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold
            ),
          ),
            ],
          ),

        ],
        
      ),
      
    );
  }
}