import 'package:flutter/material.dart';

import 'buttons.dart';
import 'navigationbar.dart';

class SignUpPage3 extends StatefulWidget {
  const SignUpPage3({super.key});

  @override
  State<SignUpPage3> createState() => _SignUpPage3State();
}

class _SignUpPage3State extends State<SignUpPage3> {
  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
   return Scaffold(
     appBar:AppBar(backgroundColor:  Colors.white),
        
   
  
        body: SingleChildScrollView( 
        child: Form(
        key: _formKey,
        child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
           crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            const SizedBox(
                    height: 100,
                  ), 
                  
            const Icon(
              Icons.app_registration_sharp,
              size: 90,
            ),
            
             
          const Text(
                    "Create an account",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontStyle: FontStyle.italic
                    ),
                  ),

                  const SizedBox(
                    height: 40,
                  ),
      
              Padding(
                    padding: const EdgeInsets.only(
                        left: 10, right: 10, top: 1, bottom: 10),
                    child: TextFormField(
                      decoration: InputDecoration(
                        labelText: "Phone Number",
                        prefixIcon: const Icon(Icons.phone, color: Colors.purple),
                            focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.purple),
                            borderRadius: BorderRadius.circular(50)),
                        enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.purple),
                            borderRadius: BorderRadius.circular(50)),
                ),
                 validator: (value) {
                        if (value!.length > 10) {
                          return null;
                        } else {
                          return "Phone number must consist of 12 digits ";
                        }
                      },
              ),
            ),
            
             

            Padding(
                    padding: const EdgeInsets.only(
                        left: 10, right: 10, top: 1, bottom: 10),
                    child: TextFormField(
                      decoration: InputDecoration(
                        labelText: "City",
                        prefixIcon: const Icon(Icons.home, color: Colors.purple),
                            focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.purple),
                            borderRadius: BorderRadius.circular(50)),
                        enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.purple),
                            borderRadius: BorderRadius.circular(50)),
                ),
                validator: (value) {
                        if (value!.length > 4) {
                          return null;
                        } else {
                          return "Please enter your city";
                        }
                      },
              ),
            ),

            Padding(
                    padding: const EdgeInsets.only(
                        left: 10, right: 10, top: 1, bottom: 0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        labelText: "Address",
                        prefixIcon: const Icon(Icons.home, color: Colors.purple),
                            focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.purple),
                            borderRadius: BorderRadius.circular(50)),
                        enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.purple),
                            borderRadius: BorderRadius.circular(50)),
                ),
                validator: (value) {
                        if (value!.length > 4) {
                          return null;
                        } else {
                          return "Please enter your address";
                        }
                      },
              ),
            ),

          

         const SizedBox(
           height: 40,
          ),

          

         InkWell(
                    onTap: () {
                      if (_formKey.currentState!.validate()) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Navigation()),
                        );
                      }
                    },
                    child: MyButton(
                      label: "Create ",
                      onPressed: () {},
                    ),
                  ),


        

          
        
         ]
         
        ),
        
      ),
    ),
        
   );
  }
}