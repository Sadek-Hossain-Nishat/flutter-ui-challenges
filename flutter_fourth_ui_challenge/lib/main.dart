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
      title: 'Flutter Demo',
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
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Expanded(
              child: Container(
                child: Stack(
                    alignment: Alignment.bottomLeft,
                    clipBehavior: Clip.none,
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(50)),
                            gradient: LinearGradient(
                                colors: [Colors.pink, Colors.purpleAccent],
                                begin: Alignment.topCenter)),
                        child: Padding(
                          padding: EdgeInsets.all(10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Icon(
                                    Icons.menu,
                                    color: Colors.white,
                                    size: 30,
                                  ),
                                  CircleAvatar(
                                    backgroundColor: Colors.white,
                                    radius: 25,
                                    child: Icon(Icons.shopping_cart),
                                  )
                                ],
                              ),
                              Text(
                                'Men Shoe',
                                style: TextStyle(
                                    fontFamily: 'Segoe UI',
                                    fontWeight: FontWeight.w600,
                                    fontSize: 35,
                                    color: Color(0xffffffff)),
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: Colors.white,
                                    size: 30,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    '4.5',
                                    style: TextStyle(
                                        fontFamily: 'Segoe UI',
                                        fontWeight: FontWeight.w600,
                                        fontSize: 20,
                                        color: Color(0xffffffff)),
                                  ),
                                ],
                              ),
                              Text(
                                'Size -  9',
                                style: TextStyle(
                                    fontFamily: 'Segoe UI',
                                    fontWeight: FontWeight.w600,
                                    fontSize: 25,
                                    color: Color(0xffffffff)),
                              ),
                              Text(
                                'Brand : Adidas',
                                style: TextStyle(
                                    fontFamily: 'Segoe UI',
                                    fontWeight: FontWeight.w600,
                                    fontSize: 25,
                                    color: Color(0xffffffff)),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        child: Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.all(10),
                              child: Card(
                                elevation: 8,
                                shape: RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(59))),
                                child: CircleAvatar(
                                  radius: 30,
                                  backgroundColor: Colors.white,
                                  child: Icon(
                                    Icons.favorite,
                                    color: Colors.red,
                                    size: 30,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 70,
                            ),
                            Padding(
                              padding: EdgeInsets.all(10),
                              child: Container(
                                height: 170,
                                child: Image.network(
                                    "https://www.pngall.com/wp-content/uploads/2016/06/Adidas-Shoes-PNG-Image.png"),
                              ),
                            )
                          ],
                        ),
                        bottom: -70,
                      )
                    ]),
              ),
              flex: 3,
            ),
            Expanded(
                flex: 4,
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: MediaQuery.of(context).size.height / 11,
                        ),
                        Text(
                          'Description',
                          style: TextStyle(
                              fontFamily: 'Segoe UI',
                              fontWeight: FontWeight.w600,
                              fontSize: 30,
                              color: Color(0xff000000)),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height / 40,
                        ),
                        Text(
                          'It is a new branded Adidas shoe. This is\nspecially for sports players. It has only one colour.',
                          style: TextStyle(
                              fontFamily: 'Segoe UI',
                              fontSize: 19,
                              color: Color(0xff000000)),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height / 40,
                        ),
                        Text(
                          'Quantity',
                          style: TextStyle(
                              fontFamily: 'Segoe UI',
                              fontWeight: FontWeight.w600,
                              fontSize: 30,
                              color: Color(0xff000000)),
                        ),
                        Row(
                          children: [
                            ElevatedButton(
                                onPressed: () {},
                                child: Text(
                                  '-',
                                  style: TextStyle(fontSize: 30),
                                )),
                            ElevatedButton(
                                onPressed: () {},
                                child: Text(
                                  '+',
                                  style: TextStyle(fontSize: 30),
                                )),
                            SizedBox(
                              width: MediaQuery.of(context).size.width / 12,
                            ),
                            Text(
                              '1',
                              style: TextStyle(fontSize: 30),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                )),
            Expanded(
                flex: 1,
                child: Container(
                  child: Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(10),
                        child: Container(
                          child: Row(
                            children: [
                              Text(
                                '\$',
                                style:
                                    TextStyle(fontSize: 20, color: Colors.blue),
                              ),
                              Text(
                                '100',
                                style: TextStyle(
                                  fontSize: 50,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                          child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(60),
                            ),
                            color: Colors.blue),
                        height: MediaQuery.of(context).size.height / 7.3,
                        width: MediaQuery.of(context).size.width / 2,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: EdgeInsets.all(10),
                              child: Text(
                                'Buy Now',
                                style: TextStyle(
                                    fontSize: 25,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Icon(
                              Icons.shopping_cart,
                              color: Colors.yellowAccent,
                              size: 35,
                            )
                          ],
                        ),
                      ))
                    ],
                  ),
                ))
          ],
        ), // This trailing comma makes auto-formatting nicer for build methods.
      ),
    );
  }
}
