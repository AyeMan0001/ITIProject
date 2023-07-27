import 'package:flutter/material.dart';
import 'package:shopping_app/signup2.dart';

import 'buttons.dart';

class SignUpPage1 extends StatefulWidget {
  const SignUpPage1({super.key});

  @override
  State<SignUpPage1> createState() => _SignUpPage1State();
}

class _SignUpPage1State extends State<SignUpPage1> {
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
                        labelText: "First Name",
                        prefixIcon: const Icon(Icons.person_3_outlined, color: Colors.purple),
                            focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.purple),
                            borderRadius: BorderRadius.circular(50)),
                        enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.purple),
                            borderRadius: BorderRadius.circular(50)),
                ),
                 validator: (value) {
                        if (value!.length > 1) {
                          return null;
                        } else {
                          return "Please enter your first name";
                        }
                      },
              ),
            ),
            
             

            Padding(
                    padding: const EdgeInsets.only(
                        left: 10, right: 10, top: 1, bottom: 10),
                    child: TextFormField(
                      decoration: InputDecoration(
                        labelText: "Last Name",
                        prefixIcon: const Icon(Icons.person_3_outlined, color: Colors.purple),
                            focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.purple),
                            borderRadius: BorderRadius.circular(50)),
                        enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.purple),
                            borderRadius: BorderRadius.circular(50)),
                ),
                validator: (value) {
                        if (value!.length > 1) {
                          return null;
                        } else {
                          return "Please enter your last name";
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
                              builder: (context) => const SignUpPage2()),
                        );
                      }
                    },
                    child: MyButton(
                      label: "Next",
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