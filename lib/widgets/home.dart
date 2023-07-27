import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _userStream = FirebaseFirestore.instance.collection('Product').snapshots();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
   appBar: AppBar(
        title:  Text("Home", style: TextStyle(fontSize: 25,color: Colors.black,fontWeight: FontWeight.bold)),
        centerTitle: true,
        
      ),
      body: StreamBuilder(
        stream: _userStream,
        builder: (context,snapshot){
          if(snapshot.hasError){
            return const Text("Conncetion Error");

          }
          if(snapshot.connectionState == ConnectionState.waiting){
            return const Text("Loading...");
          }
          var docs = snapshot.data!.docs;
          return ListView.builder(
            itemCount: docs.length,
            itemBuilder: (context,index){
              return ListTile(
                leading: Image.network(docs[index]['productImg']),
                title: Text(docs[index]['productName']),
                subtitle: Text(docs[index]['productCategory']),
              );
            }
          );

        },
      ),

        );

     
  }
}