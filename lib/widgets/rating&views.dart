import 'package:flutter/material.dart';

import 'account.dart';
import 'home.dart';

class ViewsPage extends StatefulWidget {
  const ViewsPage({super.key});

  @override
  State<ViewsPage> createState() => _ViewsPageState();
}

class _ViewsPageState extends State<ViewsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
            "Rating & Reviews",
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
                    image: AssetImage("images/review.png"),
                  )),
              const SizedBox(
                height: 10,
              ),
              const Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  "No items to review",
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
                  '''You do not any pending ratings at the moment''',
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