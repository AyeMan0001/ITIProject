// ignore_for_file: dead_code, prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class FashionPage extends StatefulWidget{
  const FashionPage({super.key});

  @override
  State<FashionPage> createState() => _FashionPage();
}

class _FashionPage extends State<FashionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  image: DecorationImage(image: AssetImage('images/dress.jpg'),
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
                  image: DecorationImage(image: AssetImage('images/jeans.jpg'),
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
            "Dresses",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold
            ),
          ),
          SizedBox(width: 120,),
          Text(
            "Jeans",
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
                  image: DecorationImage(image: AssetImage('images/watches.jpg'),
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
                  image: DecorationImage(image: AssetImage('images/eyewear.jpeg'),
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
              SizedBox(width: 50.0,
              ),
              Text(
            "Watches",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold
            ),
          ),
          SizedBox(width: 100,),
          Text(
            "Eye Wear",
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