// ignore_for_file: unused_element, prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class PhonesPage extends StatefulWidget{
  const PhonesPage({super.key});

  @override
  State<PhonesPage> createState() => _PhonesPage();
}

class _PhonesPage extends State<PhonesPage> {
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
                  image: DecorationImage(image: AssetImage('images/samsung.jpeg'),
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
                  image: DecorationImage(image: AssetImage('images/huawei.jpeg'),
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
            "Samsung",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold
            ),
          ),
          SizedBox(width: 100,),
          Text(
            "Huawei",
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
                  image: DecorationImage(image: AssetImage('images/xiaomi.jpg'),
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
                  image: DecorationImage(image: AssetImage('images/iphone.jpeg'),
                  fit: BoxFit.fill,
                  
                  ),
                )
              ),
              ),
            ],
          ),
          SizedBox(height: 20),
          Row(
            children: [
              SizedBox(width: 60.0,
              ),
              Text(
            "Xiaomi",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold
            ),
          ),
          SizedBox(width: 130,),
          Text(
            "iPhone",
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