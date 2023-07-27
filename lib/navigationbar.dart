import 'package:flutter/material.dart';
import 'package:shopping_app/widgets/account.dart';
import 'package:shopping_app/widgets/categories.dart';
import 'package:shopping_app/widgets/home.dart';

class Navigation extends StatefulWidget {
  
  const Navigation({super.key});

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {

  
  // ignore: non_constant_identifier_names
  int selectedIndex = 0;
  List<Widget> page = [
    HomePage(),
    CategoriesPage(),
    AccountPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: page[selectedIndex],
     
      bottomNavigationBar: BottomNavigationBar(

        
          
          type: BottomNavigationBarType.fixed,
          currentIndex: selectedIndex,
          // selectedFontSize: 15,
          // iconSize: 30,
          selectedItemColor: Colors.black,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: ("Home") ,),
            BottomNavigationBarItem(icon: Icon(Icons.category), label: "Categories"),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_circle,), label: "Account"),
          ],
          onTap: (pageIndex) {
            selectedIndex = pageIndex;
            setState(() {});
          }),
    );
  }
  
}
