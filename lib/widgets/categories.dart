
// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopping_app/widgets/phones.dart';
import 'package:shopping_app/widgets/sports.dart';

import 'electronics.dart';
import 'fashion.dart';

class CategoriesPage extends StatefulWidget {
  const CategoriesPage({super.key});

  @override
  State<CategoriesPage> createState() => _CategoriesPage();
}

class _CategoriesPage extends State<CategoriesPage> {

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child:
      Scaffold(
        appBar: AppBar(
          title: Text(
            'Categories',
            style: TextStyle(
                fontSize: 42.0,
                fontWeight: FontWeight.bold
            ),
          ),
          centerTitle: true,
          leading: IconButton(
              onPressed: () {},
              icon: Icon(Icons.arrow_back)),
        ),
        body: Column(children:
        [
          SizedBox(height: 15.0,),
          TabBar(
            padding: EdgeInsets.only(left:20.0),
            indicatorColor: Colors.transparent,
            labelColor: Colors.purple,
            isScrollable: true,
            labelPadding: EdgeInsets.only(right: 45.0),
            unselectedLabelColor: Colors.grey,
            tabs: [
              Tab(
                child: Text(
                    'Fashion',
                    style: TextStyle(
                        fontSize: 21.0
                    )
                ),
              ),
              Tab(
                child: Text(
                    'Electronics',
                    style: TextStyle(
                        fontSize: 21.0
                    )
                ),
              ),
              Tab(
                child: Text(
                    'Sports',
                    style: TextStyle(
                        fontSize: 21.0
                    )
                ),
              ),
              Tab(
                child: Text(
                    'Phones',
                    style: TextStyle(
                        fontSize: 21.0
                    )
                ),
              ),
            ],
          ),
          SizedBox(height: 15,),
          Expanded(
              child: TabBarView(
                children: [
                  Container(
                    child: FashionPage(),
                  ),
                  Container(
                    child: ElectronicsPage(),
                  ),

                  Container(
                      child: SportsPage()
                  ),
                  Container(
                      child: PhonesPage()
                  ),
                ],)
          )


        ],
        ),

      ),


    );
  }
}