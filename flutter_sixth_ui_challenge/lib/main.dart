import 'package:flutter/material.dart';

import 'music_list.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     debugShowCheckedModeBanner: false,
      home:  MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {



  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double _currentSliderValue = 20;

  @override
  Widget build(BuildContext context) {
    



    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffdfe9fd),

        body: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(

            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color:Color(0xffdee7f6),
                        shape: BoxShape.circle,
                        boxShadow:[

                          BoxShadow(
                            color: Colors.black26,
                            offset: Offset(4, 4),
                            blurRadius: 15,
                            spreadRadius: 1
                          ),


                          BoxShadow(
                              color: Colors.white,
                              offset: Offset(4, -4),
                              blurRadius: 8,
                              spreadRadius: 1
                          ),


                        ]
                      ),
                      child: Icon(Icons.arrow_back,color: Color(0xff9faec7),
                      size: 25,),
                    ),
                    onTap:(){
                      Navigator.push(context, MaterialPageRoute(builder: (_)=>MusicList()));
                    },

                  ),
                  Text(''),
                  Container()
                ],
              ),
              SizedBox(),
              Container(),
              SizedBox(),
              Text(''),
              Text(''),
              SizedBox(),
            SliderTheme(data: SliderThemeData(
              trackHeight: 10.0,
              thumbShape: RoundSliderThumbShape(enabledThumbRadius: 17)
            ), child:
            Slider(
              value: _currentSliderValue,
              max: 100,
              divisions: 5,
              label: _currentSliderValue.round().toString(),
              onChanged: (double value) {
                setState(() {
                  _currentSliderValue = value;

                });
              },
            )),
              SizedBox(),
              Row()
            ],

          ),
        )
        // This trailing comma makes auto-formatting nicer for build methods.
      ),
    );
  }
}



