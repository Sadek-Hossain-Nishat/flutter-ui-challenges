import 'package:flutter/material.dart';
import 'package:flutter_fifth_ui_challenge/detailpaspage.dart';

class One extends StatelessWidget {
  const One({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: MediaQuery.of(context).size.height / 2,
            child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(children: [
                  Stack(
                      alignment: Alignment.bottomCenter,
                      clipBehavior: Clip.none,
                      children: [
                        GestureDetector(
                          child: Container(
                              height: 280,
                              width: 190,
                              // color: Color(0xff1bbd72),
                              decoration: BoxDecoration(
                                  color: Color(0xff1bbd72),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(15))),
                              child: Column(
                                children: [
                                  Text(
                                    'From',
                                    style: TextStyle(
                                        fontFamily: 'Segoe UI',
                                        fontWeight: FontWeight.w600,
                                        fontSize: 25,
                                        color: Color(0xfff0e8e8)),
                                  ),
                                  Text(
                                    '\$05',
                                    style: TextStyle(
                                        fontFamily: 'Segoe UI',
                                        fontWeight: FontWeight.w600,
                                        fontSize: 35,
                                        color: Color(0xfff0e8e8)),
                                  ),
                                  Container(
                                    height: 140,
                                    width: 140,
                                    child: Image.network(
                                        'https://purepng.com/public/uploads/large/purepng.com-mangomangojuicy-stone-fruitindian-mangocommon-mango-1701527332082oqnj6.png'),
                                  ),
                                  Text(
                                    'Mango',
                                    style: TextStyle(
                                        fontFamily: 'Segoe UI',
                                        fontWeight: FontWeight.w600,
                                        fontSize: 30,
                                        color: Color(0xfff0e8e8)),
                                  ),
                                ],
                              )),
                          onTap: (){
                            Navigator.push(context,
                            MaterialPageRoute(builder: (context)=>Details()));
                          },
                        ),
                        Positioned(
                            bottom: -30,
                            child: Card(
                              elevation: 5,
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(50))),
                              child: CircleAvatar(
                                backgroundColor: Colors.white,
                                radius: 25,
                                child: Icon(
                                  Icons.add_shopping_cart,
                                  color: Colors.black,
                                ),
                              ),
                            ))
                      ]),
                  SizedBox(
                    width: 10,
                  ),
                  Stack(
                      alignment: Alignment.bottomCenter,
                      clipBehavior: Clip.none,
                      children: [
                        Container(
                            height: 280,
                            width: 190,
                            // color: Color(0xff1bbd72),
                            decoration: BoxDecoration(
                                color: Color(0xff1bbd72),
                                borderRadius:
                                BorderRadius.all(Radius.circular(15))),
                            child: Column(
                              children: [
                                Text(
                                  'From',
                                  style: TextStyle(
                                      fontFamily: 'Segoe UI',
                                      fontWeight: FontWeight.w600,
                                      fontSize: 25,
                                      color: Color(0xfff0e8e8)),
                                ),
                                Text(
                                  '\$05',
                                  style: TextStyle(
                                      fontFamily: 'Segoe UI',
                                      fontWeight: FontWeight.w600,
                                      fontSize: 35,
                                      color: Color(0xfff0e8e8)),
                                ),
                                Container(
                                  height: 140,
                                  width: 140,
                                  child: Image.network(
                                      'https://purepng.com/public/uploads/large/purepng.com-mangomangojuicy-stone-fruitindian-mangocommon-mango-1701527332082oqnj6.png'),
                                ),
                                Text(
                                  'Mango',
                                  style: TextStyle(
                                      fontFamily: 'Segoe UI',
                                      fontWeight: FontWeight.w600,
                                      fontSize: 30,
                                      color: Color(0xfff0e8e8)),
                                ),
                              ],
                            )),
                        Positioned(
                            bottom: -30,
                            child: Card(
                              elevation: 5,
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(50))),
                              child: CircleAvatar(
                                backgroundColor: Colors.white,
                                radius: 25,
                                child: Icon(
                                  Icons.add_shopping_cart,
                                  color: Colors.black,
                                ),
                              ),
                            ))
                      ]),

                  SizedBox(
                    width: 10,
                  ),

                  Stack(
                      alignment: Alignment.bottomCenter,
                      clipBehavior: Clip.none,
                      children: [
                        Container(
                            height: 280,
                            width: 190,
                            // color: Color(0xff1bbd72),
                            decoration: BoxDecoration(
                                color: Color(0xff1bbd72),
                                borderRadius:
                                BorderRadius.all(Radius.circular(15))),
                            child: Column(
                              children: [
                                Text(
                                  'From',
                                  style: TextStyle(
                                      fontFamily: 'Segoe UI',
                                      fontWeight: FontWeight.w600,
                                      fontSize: 25,
                                      color: Color(0xfff0e8e8)),
                                ),
                                Text(
                                  '\$05',
                                  style: TextStyle(
                                      fontFamily: 'Segoe UI',
                                      fontWeight: FontWeight.w600,
                                      fontSize: 35,
                                      color: Color(0xfff0e8e8)),
                                ),
                                Container(
                                  height: 140,
                                  width: 140,
                                  child: Image.network(
                                      'https://purepng.com/public/uploads/large/purepng.com-mangomangojuicy-stone-fruitindian-mangocommon-mango-1701527332082oqnj6.png'),
                                ),
                                Text(
                                  'Mango',
                                  style: TextStyle(
                                      fontFamily: 'Segoe UI',
                                      fontWeight: FontWeight.w600,
                                      fontSize: 30,
                                      color: Color(0xfff0e8e8)),
                                ),
                              ],
                            )),
                        Positioned(
                            bottom: -30,
                            child: Card(
                              elevation: 5,
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(50))),
                              child: CircleAvatar(
                                backgroundColor: Colors.white,
                                radius: 25,
                                child: Icon(
                                  Icons.add_shopping_cart,
                                  color: Colors.black,
                                ),
                              ),
                            ))
                      ]),
                ])),
          ),
          Text('Description',
          style:TextStyle(
            fontFamily: 'Segoe UI',
            fontWeight: FontWeight.w700,
            fontSize: 30,
            color: Color(0xff000000)
          )),

          Text('Here, all the items are fresh.We always deliver fresh products.You can also see the condition of the products before purching. ',
              style:TextStyle(
                  fontFamily: 'Segoe UI',

                  fontSize: 18,
                  color: Color(0xff000000)
              )),
        ],
        
      ),
    ));
  }
}
