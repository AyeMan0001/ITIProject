import 'package:flutter/material.dart';

import 'account.dart';
import 'home.dart';

class SavePage extends StatefulWidget {
  const SavePage({super.key});

  @override
  State<SavePage> createState() => _SavePageState();
}

class _SavePageState extends State<SavePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
            "Saved Items",
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
                    image: AssetImage("images/fav.gif"),
                  )),
              const SizedBox(
                height: 10,
              ),
              const Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  "You haven't saved an item for later yet",
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
                  '''Tap the heart icon in your favorite items and 
                  saved them here buy later''',
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