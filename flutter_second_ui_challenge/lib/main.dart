import 'package:flutter/material.dart';

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
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(0, 196, 192, 1),
        body: Padding(
          padding: EdgeInsets.all(25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'My Task',
                    style: TextStyle(
                        fontFamily: 'Segoe UI',
                        fontWeight: FontWeight.w700,
                        fontSize: 45,
                        color: Color(0xffffffff)),
                  ),
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.white,
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: Image.asset('images/woman.png'),
                    ),
                  )
                ],
              ),
              Text(
                'You have 3 task today',
                style: TextStyle(
                    fontFamily: 'Segoe UI',
                    fontSize: 20,
                    color: Color(0Xfffbfbfb)),
              ),
              SizedBox(height: MediaQuery.of(context).size.height / 9),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height / 2,
                      width: MediaQuery.of(context).size.width / 1.5,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      child: Padding(
                        padding: EdgeInsets.all(15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Walk',
                              style: TextStyle(
                                  fontFamily: 'Segoe UI',
                                  fontWeight: FontWeight.w700,
                                  fontSize: 20,
                                  color: Color(0xff00c4c0)),
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height / 70,
                            ),
                            Text(
                              "Walk for 30 minutes in\na new rural area ",
                              style: TextStyle(
                                  fontFamily: 'Segoe UI',
                                  fontWeight: FontWeight.w700,
                                  fontSize: 20,
                                  color: Color(0xff040404)),
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height / 22,
                            ),
                            Text(
                              "If you are not in a rural area\nthen at first you have to go in a rural area. Then take a stopwatch and walk for 30 minutes. Remember don't take any rest while you arewalking.",
                              style: TextStyle(
                                  fontFamily: 'Segoe UI',
                                  fontWeight: FontWeight.w700,
                                  fontSize: 15,
                                  color: Color(0xff717473)),
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height / 22,
                            ),
                            Row(
                              children: [
                                Text(
                                  "3 Comments",
                                  style: TextStyle(
                                      fontFamily: 'Segoe UI',
                                      fontWeight: FontWeight.w700,
                                      fontSize: 18,
                                      color: Color(0xff00c4c0)),
                                ),
                                Icon(
                                  Icons.arrow_forward,
                                  size: 25,
                                  color: Color.fromRGBO(0, 196, 192, 1),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height / 2,
                      width: MediaQuery.of(context).size.width / 1.5,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      child: Padding(
                        padding: EdgeInsets.all(15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Walk',
                              style: TextStyle(
                                  fontFamily: 'Segoe UI',
                                  fontWeight: FontWeight.w700,
                                  fontSize: 20,
                                  color: Color(0xff00c4c0)),
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height / 70,
                            ),
                            Text(
                              "Walk for 30 minutes in\na new rural area ",
                              style: TextStyle(
                                  fontFamily: 'Segoe UI',
                                  fontWeight: FontWeight.w700,
                                  fontSize: 20,
                                  color: Color(0xff040404)),
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height / 22,
                            ),
                            Text(
                              "If you are not in a rural area\nthen at first you have to go in a rural area. Then take a stopwatch and walk for 30 minutes. Remember don't take any rest while you arewalking.",
                              style: TextStyle(
                                  fontFamily: 'Segoe UI',
                                  fontWeight: FontWeight.w700,
                                  fontSize: 15,
                                  color: Color(0xff717473)),
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height / 22,
                            ),
                            Row(
                              children: [
                                Text(
                                  "3 Comments",
                                  style: TextStyle(
                                      fontFamily: 'Segoe UI',
                                      fontWeight: FontWeight.w700,
                                      fontSize: 18,
                                      color: Color(0xff00c4c0)),
                                ),
                                Icon(
                                  Icons.arrow_forward,
                                  size: 25,
                                  color: Color.fromRGBO(0, 196, 192, 1),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 15,
              ),
              Center(
                child: FloatingActionButton(
                  onPressed: () {},
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.add,
                    size: 40,
                    color: Color.fromRGBO(0, 196, 192, 1),
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
