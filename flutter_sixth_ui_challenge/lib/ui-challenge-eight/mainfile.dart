import 'package:flutter/material.dart';
import 'package:flutter_sixth_ui_challenge/ui-challenge-eight/profile.dart';

import 'food.dart';
import 'meditation.dart';
import 'yoga.dart';

void main(){
  
  runApp(MainFile());
  
}


class MainFile extends StatelessWidget {
  const MainFile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homepage(),
    );
  }
}


class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int _currentindex = 0;
  final _pages = [

    Yoga(),
    Meditation(),
    Food(),
    Profile()


  ];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      bottomNavigationBar: Card(
        elevation: 5,
        child: BottomNavigationBar(
          selectedItemColor: Colors.blueAccent,
            unselectedItemColor: Colors.black,
            currentIndex: _currentindex,
            items: [

              BottomNavigationBarItem(icon: Icon(Icons.home),
                label: 'Yoga'

              ),
              BottomNavigationBarItem(icon: Icon(Icons.cloud_circle),
                label: 'Meditation'

              ),

              BottomNavigationBarItem(icon: Icon(Icons.fastfood),
                  label: 'Food'

              ),
              BottomNavigationBarItem(icon: Icon(Icons.email),
                  label: 'Profile'

              ),



        ],
        onTap:(index){
            setState(() {
              _currentindex = index;
            });
        } ,
        backgroundColor: Colors.white,),
      ),
      body: _pages[_currentindex],
    )
    ;
  }
}

