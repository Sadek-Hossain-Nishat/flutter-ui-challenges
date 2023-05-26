import 'package:flutter/material.dart';
import 'package:flutter_fifth_ui_challenge/tab_pages/four.dart';
import 'package:flutter_fifth_ui_challenge/tab_pages/one.dart';
import 'package:flutter_fifth_ui_challenge/tab_pages/three.dart';
import 'package:flutter_fifth_ui_challenge/tab_pages/two.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize:
              Size.fromHeight(MediaQuery.of(context).size.height / 4),
          child: AppBar(
            flexibleSpace: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 50),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text(
                      'Top Items',
                      style: TextStyle(
                          fontFamily: 'Segoe UI',
                          fontSize: 40,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff000000)),
                    ),
                  )
                ],
              ),
            ),
            backgroundColor: Colors.white,
            elevation: 0,
            leading: Icon(
              Icons.menu,
              color: Colors.blue,
            ),
            actions: [
              Icon(
                Icons.shopping_cart,
                color: Colors.black,
              )
            ],
            bottom: TabBar(
                labelColor: Colors.black,
                labelStyle:
                    TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                unselectedLabelStyle: TextStyle(fontSize: 16),
                tabs: [
                  Tab(
                    text: 'Top',
                  ),
                  Tab(
                    text: 'Fruits',
                  ),
                  Tab(
                    text: 'Flowers',
                  ),
                  Tab(
                    text: 'Plants',
                  ),
                ]),
          ),
        ),
        body: TabBarView(children: [One(), Two(), Three(), Four()]),
      ),
    );
  }
}
