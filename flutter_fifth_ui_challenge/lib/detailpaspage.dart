import 'package:flutter/material.dart';

class Details extends StatelessWidget {
  const Details({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xff1bbd72),
        actions: [
          Padding(
            padding: EdgeInsets.all(3),
            child: CircleAvatar(
              radius: 30,
              backgroundColor: Colors.black,
              child: Icon(
                Icons.shopping_cart,
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Expanded(
              flex: 2,
              child: Stack(

                alignment: Alignment.bottomRight,
                children: [
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Color(0xff1bbd72),
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(50),
                            bottomRight: Radius.circular(50))),
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Mango',
                            style: TextStyle(
                                fontFamily: 'Segoe UI',
                                fontWeight: FontWeight.w700,
                                fontSize: 35,
                                color: Color(0xffffffff)),
                          ),
                          Text(
                            'From',
                            style: TextStyle(
                                fontFamily: 'Segoe UI',
                                fontWeight: FontWeight.w700,
                                fontSize: 26,
                                color: Color(0xffefe5e5)),
                          ),
                          Text(
                            '\$10',
                            style: TextStyle(
                                fontFamily: 'Segoe UI',
                                fontWeight: FontWeight.w700,
                                fontSize: 25,
                                color: Color(0xffffffff)),
                          ),
                          Text(
                            'Sizes',
                            style: TextStyle(
                                fontFamily: 'Segoe UI',
                                fontWeight: FontWeight.w700,
                                fontSize: 20,
                                color: Color(0xffeee7e7)),
                          ),
                          Text(
                            'Medium',
                            style: TextStyle(
                                fontFamily: 'Segoe UI',
                                fontWeight: FontWeight.w700,
                                fontSize: 25,
                                color: Color(0xffffffff)),
                          ),
                          CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 25,
                            child: Icon(
                              Icons.add_shopping_cart,
                              color: Colors.black,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                      bottom: MediaQuery.of(context).size.height / -100,
                      child: Container(
                        height: MediaQuery.of(context).size.height / 3,
                        child: Image.network(
                            'https://purepng.com/public/uploads/large/purepng.com-mangomangojuicy-stone-fruitindian-mangocommon-mango-1701527332082oqnj6.png'),
                      ))
                ],
              )),
          Expanded(
              flex: 3,
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Container(
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 6,
                      ),
                      Text(
                        'Product description',
                        style: TextStyle(
                            fontFamily: 'Segoe UI',
                            fontWeight: FontWeight.w700,
                            fontSize: 25,
                            color: Color(0xff000000)),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Mangoes are sweet, creamy fruits that\nhave a range of possible health benefits.',
                        style: TextStyle(
                            fontFamily: 'Segoe UI',
                            fontSize: 18,
                            color: Color(0xff000000)),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Details',
                        style: TextStyle(
                            fontFamily: 'Segoe UI',
                            fontSize: 25,
                            color: Color(0xff000000)),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Weight: 1 kg',
                        style: TextStyle(
                            fontFamily: 'Segoe UI',
                            fontSize: 18,
                            color: Color(0xff000000)),
                      ),
                    ],
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
