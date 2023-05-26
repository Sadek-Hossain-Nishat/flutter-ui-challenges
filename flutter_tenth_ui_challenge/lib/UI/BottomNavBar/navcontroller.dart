import 'package:flutter/material.dart';
import 'package:flutter_tenth_ui_challenge/UI/BottomNavBar/Pages/account.dart';
import 'package:flutter_tenth_ui_challenge/UI/BottomNavBar/Pages/basket.dart';
import 'package:flutter_tenth_ui_challenge/UI/BottomNavBar/Pages/whishlist.dart';

import 'Pages/chat.dart';
import 'Pages/home.dart';
class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int index = 0;
  final _pages = [
    Home(),
    Chat(),
    Whishlist(),
    Basket(),
    Account()
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: true,
      selectedItemColor: Colors.black87,
        currentIndex: index,
        unselectedItemColor: Colors.black45,items: [
        BottomNavigationBarItem(icon: Icon(Icons.home,color: Colors.black45,),
        label: 'Home'),

        BottomNavigationBarItem(icon: Icon(Icons.chat,color: Colors.black45,),
            label: 'Chat'),

        BottomNavigationBarItem(icon: Icon(Icons.favorite_border,color: Colors.black45,),
            label: 'Whishlist'),

        BottomNavigationBarItem(icon: Icon(Icons.shopping_basket,color: Colors.black45,),
            label: 'Basket'),
         BottomNavigationBarItem(icon: Icon(Icons.people,color: Colors.black45,),
            label: 'Account'),



      ],
      onTap: (value){
        setState(() {

          index = value;
        });
      },),
      body: _pages[index],
    ));
  }
}
