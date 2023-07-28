import 'package:flutter/material.dart';

class TeamPage extends StatefulWidget {
  const TeamPage({super.key});

  @override
  State<TeamPage> createState() => _TeamPageState();
}

class _TeamPageState extends State<TeamPage> {
  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
     return Scaffold(
       appBar:AppBar(backgroundColor:  Colors.white),

  
        body: SingleChildScrollView( 
          
        child: Form(
        key: _formKey,
        child: Column(
          
          children: [
            const SizedBox(
           height: 20,
          ),
            

          
            
         Container( 
            width: 700,
            height: 300,child: const Image(
            image: AssetImage("images/team.jpg"),
          )),

           const SizedBox(
           height: 20,
          ),

          const Text("Developer Team", 
            style:TextStyle(fontSize: 40, color: Colors.black,fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
        ),


          const SizedBox(
           height: 40,
          ),
          
          
          const Padding(
          padding: EdgeInsets.only(left: 70),
            child: Row(
           children: [
           Icon(Icons.person_3_outlined, color: Colors.purple,size: 50,), 
           Text(
            "Mohamed Ayman Osman",
             style: TextStyle(fontSize: 20, color: Colors.black),
             textAlign: TextAlign.center,
             ),
          ],
        ),
        ),
        const SizedBox(
           height: 20,
          ),

        const Padding(
          padding: EdgeInsets.only(left: 70),
            child: Row(
           children: [
           Icon(Icons.person_3_outlined, color: Colors.purple,size: 50,), 
           Text(
            "Shahd Adel Elsayed",
             style: TextStyle(fontSize: 20, color: Colors.black),
             textAlign: TextAlign.center,
             ),
          ],
        ),
        ),
        const SizedBox(
           height: 20,
          ),


        const Padding(
          padding: EdgeInsets.only(left: 70),
            child: Row(
           children: [
           Icon(Icons.person_3_outlined, color: Colors.purple,size: 50,), 
           Text(
            "Esraa Saad Mohamed",
             style: TextStyle(fontSize: 20, color: Colors.black),
             textAlign: TextAlign.center,
             ),
          ],
        ),
        ),

        const SizedBox(
           height: 20,
          ),

          const Padding(
          padding: EdgeInsets.only(left: 70),
            child: Row(
           children: [
           Icon(Icons.person_3_outlined, color: Colors.purple,size: 50,), 
           Text(
            "Bassant Tarek Esmail",
             style: TextStyle(fontSize: 20, color: Colors.black),
             textAlign: TextAlign.center,
             ),
          ],
        ),
        ),

 
         ]
         
        ),
        
      ),
    ),
          
   );
  }
}