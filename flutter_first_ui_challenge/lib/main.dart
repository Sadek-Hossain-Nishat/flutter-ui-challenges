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
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: EdgeInsets.all(25),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(20),
              child: Container(
                height: MediaQuery.of(context).size.height / 2,
                width: MediaQuery.of(context).size.width,
                child: Image.network(
                    "https://www.tourneau.com/on/demandware.static/-/Sites-master-catalog/default/dw31c4264c/images/large/wjbb0037-cartier-ballon-bleu-de-cartier-36mm-car0355608.png"),
              ),
            ),
            Stack(
              alignment: Alignment.bottomCenter,
              clipBehavior: Clip.none,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height / 3.5,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: Color(0xffffffff),
                      border: Border.all(width: 5, color: Color(0xffeceaea)),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(50),
                          topRight: Radius.circular(50))),
                  child: Padding(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "CARTIER",
                          style: TextStyle(
                              fontFamily: "Segoe UI",
                              fontWeight: FontWeight.w700,
                              fontSize: 20,
                              color: Color(0xff000000)),
                        ),
                        Text(
                          "A23456",
                          style: TextStyle(
                              fontFamily: "Segoe UI",
                              fontWeight: FontWeight.w700,
                              fontSize: 15,
                              color: Color(0xff4e4848)),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "This is a new clock. Lots of facilities.\nIt's a waterproof clock. Real gold effect. Lifetime grantee. Limited Edition.",
                          style: TextStyle(
                              fontFamily: "Segoe UI",
                              fontWeight: FontWeight.w700,
                              fontSize: 14,
                              color: Color(0xff514d51)),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "\$165",
                          style: TextStyle(
                              fontFamily: "Segoe UI",
                              fontWeight: FontWeight.w700,
                              fontSize: 24,
                              color: Color(0xffe510d0)),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                    bottom: -30,
                    child: Card(
                      elevation: 8,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 30,
                        child: Padding(
                          padding: EdgeInsets.all(15),
                          child: Image.asset('images/plus.png'),
                        ),
                      ),
                    ))
              ],
            )
          ],
        ),
      ),
    ));
  }
}
