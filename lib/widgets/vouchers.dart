import 'package:flutter/material.dart';
import 'package:shopping_app/widgets/active.dart';
import 'package:shopping_app/widgets/inactive.dart';

import 'account.dart';

class Vouchers extends StatefulWidget {
  const Vouchers({super.key});

  @override
  State<Vouchers> createState() => _VouchersState();
}

class _VouchersState extends State<Vouchers> {
  @override
  Widget build(BuildContext context) {
     return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Vouchers",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.shopping_cart),
              onPressed: () {},
            ),
          ],
        ),
        body:  Column(
              children: [
             TabBar(
              isScrollable: true,
            tabs: [
            Tab( child:Text('Active',style: TextStyle(fontSize: 20),)),
            Tab( child:Text('Inactive',style: TextStyle(fontSize: 20),)),

          
          ],
             ),
             Expanded(
              child: TabBarView(
                
               children: [
                Container(
                  child: ActivePage(),
                ),
                  Container(
                  child: InactivePage(),
                )

               ],
              
               
            

                )
               
              ),
             
          ],
            ),
          
        ),
      
    );
  }
}