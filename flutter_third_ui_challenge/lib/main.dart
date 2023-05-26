import 'package:flutter/material.dart';
import 'package:flutter_third_ui_challenge/Second.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomepage(),
    );
  }
}

class MyHomepage extends StatefulWidget {
  const MyHomepage({super.key});

  @override
  State<MyHomepage> createState() => _MyHomepageState();
}

class _MyHomepageState extends State<MyHomepage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromRGBO(20, 67, 62, 1),
        body: Center(
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              Center(
                child: Container(
                  height: 200,
                  child: Image.asset('images/cleaner.png'),
                ),
              ),
              SizedBox(
                height: 35,
              ),
              Text(
                'Provide You',
                style: TextStyle(
                    fontFamily: 'Segoe UI',
                    fontWeight: FontWeight.w700,
                    fontSize: 40,
                    color: Color(0xffffffff)),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                'Best Cleaning',
                style: TextStyle(
                    fontFamily: 'Segoe UI',
                    fontWeight: FontWeight.w700,
                    fontSize: 40,
                    color: Color(0xffffffff),
                    shadows: [
                      Shadow(
                          offset: Offset(0.00, 3.00),
                          color: Color(0xff000000).withOpacity(0.16),
                          blurRadius: 6)
                    ]),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                'Service',
                style: TextStyle(
                    fontFamily: 'Segoe UI',
                    fontWeight: FontWeight.w700,
                    fontSize: 40,
                    color: Color(0xffffffff)),
              ),
              SizedBox(
                height: 40,
              ),
              GestureDetector(
                child: Container(
                  height: 50,
                  width: 154,
                  decoration: BoxDecoration(
                      color: Color(0xffff9b04),
                      border: Border.all(
                        width: 1,
                        color: Color(0xff7070),
                      ),
                      borderRadius: BorderRadius.circular(10)),
                  child: Center(
                    child: Text('Go',
                        style: TextStyle(
                            fontFamily: 'Segoe UI',
                            fontWeight: FontWeight.w700,
                            fontSize: 33,
                            color: Color(0xffffffff))),
                  ),
                ),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Second()));
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
