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

      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});




  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  bool value  = false;
  late double screenWidth , screenHeight;



  @override
  Widget build(BuildContext context) {
    screenWidth = MediaQuery.of(context).size.width;
    screenHeight = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black38,

        body: Stack(
          children: [
            Menu(),
            Home()
          ],

        ),
      ),
    );

  }


  Widget Menu(){
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(padding: EdgeInsets.all(20),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CircleAvatar(
            radius: 40,
            backgroundColor: Colors.white,
            child: Image.network('http://www.pngplay.com/wp-content/uploads/2/Cartoon-Man-Background-PNG-Image.png'),
          ),
          SizedBox(height: 5,),
          Text('Afran Sarkar',
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
            fontWeight: FontWeight.bold
          ),),
          Text('thed9954@gmail.com',
            style: TextStyle(
                fontSize: 15,
                color: Colors.white,

            ),),
          SizedBox(height: 15,),
          Text('Home',
            style: TextStyle(
              fontSize: 25,
              color: Colors.white,
              fontWeight:FontWeight.bold

            ),),
          SizedBox(height: 20,),
          Text('About',
            style: TextStyle(
                fontSize: 25,
                color: Colors.white,
                fontWeight:FontWeight.bold

            ),),
          SizedBox(height: 20,),
          Text('Privacy',
            style: TextStyle(
                fontSize: 25,
                color: Colors.white,
                fontWeight:FontWeight.bold

            ),),
          SizedBox(height: 20,),

          Text('profile',
            style: TextStyle(
                fontSize: 25,
                color: Colors.white,
                fontWeight:FontWeight.bold

            ),),

          SizedBox(height: 20,),

          Text('Share',
            style: TextStyle(
                fontSize: 25,
                color: Colors.white,
                fontWeight:FontWeight.bold

            ),),






        ],
      ),),

    );
  }

  Widget Home(){
    return AnimatedPositioned(child: Container(
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.all(Radius.circular(10))
      ),

      child: ListView(
        children: [
          Row(
            children: [
              IconButton(onPressed: (){
                setState(() {
                  value = !value;
                });
              }, icon: Icon(value?Icons.close:Icons.menu,color: Colors.white,))
            ],
          )
        ],

      ),

    ), duration: Duration(seconds: 1),
      top: value==false?0:100,
      bottom: value==false?0:100,
      left:value==false?0:200 ,
      right:value==false?0:-150 ,
    );
  }

}
