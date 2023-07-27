import 'package:flutter/material.dart';

class MyButton extends StatefulWidget{
  final String label;
  const MyButton({super.key,required this.label, required  Function() onPressed});

  @override
  State<MyButton> createState() => _MyButton();
}

class _MyButton extends State<MyButton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.8),
      child: Container(
        width: 200,
        height: 50,
        decoration: 
        BoxDecoration(
          color: Colors.purple,
          borderRadius: BorderRadius.circular(50),
        ),
        
        child: Center(child: Text(widget.label, style: TextStyle(color: Colors.white, fontSize: 24)),
        ),
        

      ),
    );
  }
}