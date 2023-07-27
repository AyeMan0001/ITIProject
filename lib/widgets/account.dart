import 'dart:io';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shopping_app/login.dart';
import 'package:shopping_app/welcomepage.dart';
import 'package:shopping_app/widgets/rating&views.dart';
import 'package:shopping_app/widgets/save.dart';
import 'package:shopping_app/widgets/vouchers.dart';

import '../aboutus.dart';
import 'order.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({super.key});

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  final user = FirebaseAuth.instance.currentUser!;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Account",
          style: TextStyle(
              fontSize: 25, color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(

          child: Form(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Text("Singed in as " + user.email!,
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
                )
                ,
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "My Shopping Account ",
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                TextButton.icon(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const OrderPage()),
                    );
                  },
                  icon: Icon(Icons.shopping_cart, color: Colors.purple),
                  label: SizedBox(
                    width: 190,
                    child: Text(
                      "Order",
                      style: TextStyle(fontSize: 18, color: Colors.black),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TextButton.icon(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ViewsPage()),
                    );
                  },
                  icon: Icon(Icons.rate_review, color: Colors.purple),
                  label: SizedBox(
                    width: 190,
                    child: Text(
                      "Ratings & Reviews",
                      style: TextStyle(fontSize: 18, color: Colors.black),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TextButton.icon(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Vouchers()),
                    );
                  },
                  icon: Icon(Icons.local_activity_sharp, color: Colors.purple),
                  label: SizedBox(
                    width: 190,
                    child: Text(
                      "Vouchers",
                      style: TextStyle(fontSize: 18, color: Colors.black),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TextButton.icon(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const SavePage()),
                    );
                  },
                  icon: Icon(Icons.favorite, color: Colors.purple),
                  label: SizedBox(
                    width: 190,
                    child: Text(
                      "Saved items",
                      style: TextStyle(fontSize: 18, color: Colors.black),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TextButton.icon(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const AbotUsPage()),
                    );
                  },
                  icon: Icon(Icons.info, color: Colors.purple),
                  label: SizedBox(
                    width: 190,
                    child: Text(
                      "About Us",
                      style: TextStyle(fontSize: 18, color: Colors.black),
                    ),
                  ),
                ),
                SizedBox(
                  height: 80,
                ),
                Center(
                  child: ElevatedButton(
                    onPressed: () {

                      FirebaseAuth.instance.signOut().then((value){
                        print("Signed out");
                      Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const LoginPage()),
                      );
                      });

                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.purple,
                      elevation: 5,
                      padding: EdgeInsets.only(left: 30, right: 30),
                      minimumSize: const Size(20.0, 50.0),
                    ),
                    child: const Text(
                      "Logout",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                )],
            ),
          ),
        ),
      ),
    );
  }
}
