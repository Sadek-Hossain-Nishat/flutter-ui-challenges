import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Second extends StatelessWidget {
  const Second({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(239, 240, 241, 1),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(239, 240, 241, 1),
        elevation: 0,
        leading: Padding(
            padding: EdgeInsets.all(15), child: Image.asset('images/back.png')),
        actions: [
          Padding(
            padding: EdgeInsets.all(15),
            child: Image.asset('images/notification.png'),
          )
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: 5,
          ),
          Center(
            child: Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(100)),
                ),
                child: CircleAvatar(
                  radius: 60,
                  backgroundColor: Colors.white,
                  child: Padding(
                    padding: EdgeInsets.all(8),
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(100)),
                      child: Image.asset('images/download.jpg'),
                    ),
                  ),
                )),
          ),
          SizedBox(
            height: 10,
          ),
          Center(
            child: Text(
              'Arfan Nisho',
              style: TextStyle(
                  fontFamily: 'Segoe UI',
                  fontWeight: FontWeight.w700,
                  fontSize: 30,
                  color: Color(0xff000000)),
            ),
          ),
          Center(
            child: Text(
              '@afran',
              style: TextStyle(
                  fontFamily: 'Segoe UI',
                  fontWeight: FontWeight.w700,
                  fontSize: 20,
                  color: Color(0xff525858)),
            ),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                'Bedroom',
                style: TextStyle(
                    fontFamily: 'Segoe UI',
                    fontWeight: FontWeight.w700,
                    fontSize: 20,
                    color: Color(0xff525858)),
              ),
              Text(
                'Bathroom',
                style: TextStyle(
                    fontFamily: 'Segoe UI',
                    fontWeight: FontWeight.w700,
                    fontSize: 20,
                    color: Color(0xff525858)),
              ),
            ],
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                height: 35,
                width: 111,
                decoration: BoxDecoration(
                    color: Color(0xffffffff),
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(0, 3),
                          color: Color(0xff000000).withOpacity(0.16),
                          blurRadius: 0),
                    ],
                    borderRadius: BorderRadius.circular(20)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      '-',
                      style: TextStyle(
                          fontFamily: 'Segoe UI',
                          fontWeight: FontWeight.w700,
                          fontSize: 32,
                          color: Color(0xff525858)),
                    ),
                    Text(
                      '1',
                      style: TextStyle(
                          fontFamily: 'Segoe UI',
                          fontWeight: FontWeight.w700,
                          fontSize: 32,
                          color: Color(0xfff300bb)),
                    ),
                    Text(
                      '+',
                      style: TextStyle(
                          fontFamily: 'Segoe UI',
                          fontWeight: FontWeight.w700,
                          fontSize: 32,
                          color: Color(0xff525858)),
                    ),
                  ],
                ),
              ),
              Container(
                height: 35,
                width: 111,
                decoration: BoxDecoration(
                    color: Color(0xffffffff),
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(0, 3),
                          color: Color(0xff000000).withOpacity(0.16),
                          blurRadius: 0),
                    ],
                    borderRadius: BorderRadius.circular(20)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      '-',
                      style: TextStyle(
                          fontFamily: 'Segoe UI',
                          fontWeight: FontWeight.w700,
                          fontSize: 32,
                          color: Color(0xff525858)),
                    ),
                    Text(
                      '3',
                      style: TextStyle(
                          fontFamily: 'Segoe UI',
                          fontWeight: FontWeight.w700,
                          fontSize: 32,
                          color: Color(0xfff300bb)),
                    ),
                    Text(
                      '+',
                      style: TextStyle(
                          fontFamily: 'Segoe UI',
                          fontWeight: FontWeight.w700,
                          fontSize: 32,
                          color: Color(0xff525858)),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 30),
          Container(
            decoration: BoxDecoration(
                color: Color(0xff14433e),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30))),
            child: Column(
              children: [
                Container(
                  height: 130,
                  decoration: BoxDecoration(
                      color: Color(0xff14433e),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(15),
                        child: Text(
                          'Day',
                          style: TextStyle(
                              fontFamily: "Segoe UI",
                              fontWeight: FontWeight.w700,
                              fontSize: 25,
                              color: Color(0Xffffffff)),
                        ),
                      ),
                      SingleChildScrollView(
                        child: Padding(
                          padding: EdgeInsets.all(15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 34,
                                width: 36,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        width: 1, color: Color(0xff707070)),
                                    borderRadius: BorderRadius.circular(20)),
                                child: Center(
                                  child: Text('2',
                                      style: TextStyle(
                                          fontFamily: "Segoe UI",
                                          fontWeight: FontWeight.w700,
                                          fontSize: 20,
                                          color: Color(0Xffffffff))),
                                ),
                              ),
                              Container(
                                height: 34,
                                width: 36,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        width: 1, color: Color(0xff707070)),
                                    borderRadius: BorderRadius.circular(20)),
                                child: Center(
                                  child: Text('3',
                                      style: TextStyle(
                                          fontFamily: "Segoe UI",
                                          fontWeight: FontWeight.w700,
                                          fontSize: 20,
                                          color: Color(0Xffffffff))),
                                ),
                              ),
                              Container(
                                height: 34,
                                width: 36,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        width: 1, color: Color(0xff707070)),
                                    borderRadius: BorderRadius.circular(20)),
                                child: Center(
                                  child: Text('4',
                                      style: TextStyle(
                                          fontFamily: "Segoe UI",
                                          fontWeight: FontWeight.w700,
                                          fontSize: 20,
                                          color: Color(0Xffffffff))),
                                ),
                              ),
                              Container(
                                height: 34,
                                width: 36,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        width: 1, color: Color(0xff707070)),
                                    borderRadius: BorderRadius.circular(20)),
                                child: Center(
                                  child: Text('5',
                                      style: TextStyle(
                                          fontFamily: "Segoe UI",
                                          fontWeight: FontWeight.w700,
                                          fontSize: 20,
                                          color: Color(0Xffffffff))),
                                ),
                              ),
                              Container(
                                height: 34,
                                width: 36,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        width: 1, color: Color(0xff707070)),
                                    borderRadius: BorderRadius.circular(20)),
                                child: Center(
                                  child: Text('6',
                                      style: TextStyle(
                                          fontFamily: "Segoe UI",
                                          fontWeight: FontWeight.w700,
                                          fontSize: 20,
                                          color: Color(0Xffffffff))),
                                ),
                              ),
                              Container(
                                height: 34,
                                width: 36,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        width: 1, color: Color(0xff707070)),
                                    borderRadius: BorderRadius.circular(20)),
                                child: Center(
                                  child: Text('7',
                                      style: TextStyle(
                                          fontFamily: "Segoe UI",
                                          fontWeight: FontWeight.w700,
                                          fontSize: 20,
                                          color: Color(0Xffffffff))),
                                ),
                              ),
                              Container(
                                height: 34,
                                width: 36,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        width: 1, color: Color(0xff707070)),
                                    borderRadius: BorderRadius.circular(20)),
                                child: Center(
                                  child: Text('8',
                                      style: TextStyle(
                                          fontFamily: "Segoe UI",
                                          fontWeight: FontWeight.w700,
                                          fontSize: 20,
                                          color: Color(0Xffffffff))),
                                ),
                              ),
                              Container(
                                height: 34,
                                width: 36,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        width: 1, color: Color(0xff707070)),
                                    borderRadius: BorderRadius.circular(20)),
                                child: Center(
                                  child: Text('9',
                                      style: TextStyle(
                                          fontFamily: "Segoe UI",
                                          fontWeight: FontWeight.w700,
                                          fontSize: 20,
                                          color: Color(0Xffffffff))),
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 154,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Color(0xffff9b04),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(15),
                        child: Text('Time',
                            style: TextStyle(
                                fontFamily: 'Segoe UI',
                                fontWeight: FontWeight.w700,
                                fontSize: 25,
                                color: Color(0xffffffff))),
                      ),
                      Padding(
                        padding: EdgeInsets.all(15),
                        child: Row(
                          children: [
                            Container(
                              height: 31,
                              width: 62,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      width: 1, color: Color(0xffffffff)),
                                  borderRadius: BorderRadius.circular(30)),
                              child: Center(
                                child: Text(
                                  '10:00',
                                  style: TextStyle(
                                      fontFamily: 'Segoe UI',
                                      fontWeight: FontWeight.w700,
                                      fontSize: 15,
                                      color: Color(0xffffffff)),
                                ),
                              ),
                            ),
                            SizedBox(width: 20),
                            Container(
                              height: 31,
                              width: 62,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      width: 1, color: Color(0xffffffff)),
                                  borderRadius: BorderRadius.circular(30)),
                              child: Center(
                                child: Text(
                                  '12:00',
                                  style: TextStyle(
                                      fontFamily: 'Segoe UI',
                                      fontWeight: FontWeight.w700,
                                      fontSize: 15,
                                      color: Color(0xffffffff)),
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
