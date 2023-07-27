import 'package:flutter/material.dart';

import 'account.dart';
import 'closeorder.dart';
import 'openorder.dart';

class OrderPage extends StatefulWidget {
   
const OrderPage({Key? key}) : super(key: key);
  @override
  State<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Order",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const AccountPage()),
                    );
            },
          ),
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
            Tab( child:Text('Open Orders',style: TextStyle(fontSize: 20),)),
            Tab( child:Text('Close Orders',style: TextStyle(fontSize: 20),)),

          
          ],
             ),
             Expanded(
              child: TabBarView(
                
               children: [
                Container(
                  child: OpenPage(),
                ),
                  Container(
                  child: CloseOrderPage(),
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
