
import 'package:flutter/material.dart';
import 'package:shopping_app/team.dart';

class AbotUsPage extends StatefulWidget {
  const AbotUsPage({super.key});

  @override
  State<AbotUsPage> createState() => _AbotUsPageState();
}

class _AbotUsPageState extends State<AbotUsPage> {
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
            width: 500,
            height: 200,child: const Image(
            image: AssetImage("images/handbag1.gif"),
          )),
      
          const SizedBox(
           height: 20,
          ),
          
          const Text(
             "About Us",
             style:TextStyle(fontSize:50, color:Colors.black,fontWeight: FontWeight.bold ),
            //  textAlign: TextAlign.center,
          ),
          
          const SizedBox(
           height: 10,
          ),
          const Padding(
          padding: EdgeInsets.all(10.0),
          child: Text(
             "At our online shopping application, we offer a wide variety of products at competitive prices. Whether you're looking for the latest fashion trends, electronics, household goods, or anything in between, we've got you covered.",
             style:TextStyle(fontSize:18, color:Colors.black),
            //  textAlign: TextAlign.center,
          ),
          ),

          const Padding(
          padding: EdgeInsets.all(10.0),
          child: Text(
             "Our goal is to provide you with an exceptional shopping experience that is both convenient and enjoyable.",
             style:TextStyle(fontSize:18, color:Colors.black),
            //  textAlign: TextAlign.center,
          ),
          ),
 

          const Padding(
          padding: EdgeInsets.all(10.0),
          child: Text(
             "We pride ourselves on providing excellent customer service, Thank you for choosing our online shopping application",
             style:TextStyle(fontSize:18, color:Colors.black),
            //  textAlign: TextAlign.center,
          ),
          ),

          TextButton.icon(
                onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) =>   const TeamPage()),);
                },
                icon: const Icon(Icons.person_3_outlined, color: Colors.purple,),
               label:const Text("Our team",style:TextStyle(fontSize:20, color:Colors.black,fontWeight: FontWeight.bold)), 
              ),

         


          
        
         ]
         
        ),
        
      ),
    ),
        
   );
  }
}
  