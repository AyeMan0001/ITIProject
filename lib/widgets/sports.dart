// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class SportsPage extends StatefulWidget{
  const SportsPage({super.key});

  @override
  State<SportsPage> createState() => _SportsPage();
}

class _SportsPage extends State<SportsPage> {
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
                  image: DecorationImage(image: AssetImage('images/clothes.jpeg'),
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
                  image: DecorationImage(image: AssetImage('images/foot.jpeg'),
                  fit: BoxFit.fill,
                  
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
            "Clothes",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold
            ),
          ),
          SizedBox(width: 110,),
          Text(
            "Foot Wear",
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
                  image: DecorationImage(image: AssetImage('images/equipment.jpeg'),
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
                  image: DecorationImage(image: AssetImage('images/nutrition.jpeg'),
                  fit: BoxFit.cover,
                  
                  ),
                )
              ),
              ),
            ],
          ),
          SizedBox(height: 20),
          Row(
            children: [
              SizedBox(width: 40.0,
              ),
              Text(
            "Equipments",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold
            ),
          ),
          SizedBox(width: 80,),
          Text(
            "Nutrition",
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