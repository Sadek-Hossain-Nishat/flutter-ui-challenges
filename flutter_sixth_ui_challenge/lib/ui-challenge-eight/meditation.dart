import 'package:flutter/material.dart';

void main(){
  runApp(

      RunApp()

  );
}

class RunApp extends StatelessWidget {
  const RunApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Meditation(),
    );
  }
}

class Meditation extends StatelessWidget {
  const Meditation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(

        children: [
          Stack(
            clipBehavior: Clip.none,
            alignment:Alignment.bottomCenter,
            children: [

              Container(
                height: 350,
                width: double.infinity,
                child: Image.network(
                  'https://cdn.pixabay.com/photo/2019/03/22/19/40/meteora-4074026__340.jpg',
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                bottom:-250
              ,
              child: Container(
                // height: 400,
                width: 393,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    topLeft: Radius.circular(20),
                  ),
                  
                ),
                child: Padding(padding: EdgeInsets.all(20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Text(
                      "Hatha Yoga class",
                      style: TextStyle(
                        fontSize:40,
                        fontWeight:FontWeight.bold
                      )
                    ),
                    SizedBox(height:10,),
                    Text(
                        "For Beginners",
                        style: TextStyle(
                            fontSize:40,
                            fontWeight:FontWeight.bold
                        )
                    ),
                    SizedBox(height:10,),
                    Row(
                      children: [
                        Stack(
                          clipBehavior: Clip.none,

                          children: [
                            ClipOval(
                              child: Container(
                                height: 40,
                                  width: 40,
                                child: Image.network('https://www.freepngimg.com/thumb/yoga/12-2-yoga-png-clipart.png'),
                              ),
                            ),
                            Positioned(child:  ClipOval(
                              child: Container(
                                height: 40,
                                width: 40,
                                child: Image.network('https://www.pngitem.com/pimgs/m/230-2308074_yoga-silhouette-lotus-position-clip-art-yoga-poses.png'),
                              ),
                            ),
                                  left: 25,)
                          ],
                        ),
                        SizedBox(
                          width: 40,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text('Afran Sarkar',
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold
                                ),),
                                Text('and'),
                                Text('Mustafizur Rahman',
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold
                                ),),







                              ],
                            ),

                            SizedBox(
                              height: 5,
                            ),

                            Text('Hatha,Meditation,Breathwork'),



                          ],
                        )
                      ],
                    )
                    ,
                    SizedBox(
                      height: 15,
                    ),

                    Text('Hatha,Meditation,Breathwork with Afran Sarkar,Hatha,Meditation,Breathwork with Mustafizur Rahman',
                    style: TextStyle(fontSize: 18),maxLines: 3,),
                    SizedBox(
                      height:10
                    ),
                    Text('Read more',
                      style: TextStyle(fontSize: 20,
                      fontWeight: FontWeight.bold)),
                    Divider(
                      thickness: 3,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('24 lessons',
                            style:TextStyle(fontSize: 20,fontWeight:FontWeight.bold)),
                            SizedBox(
                              height: 5,
                            ),
                            Text('3 Weeks . 1-2 Level')
                          ],
                        ),
                        Container(
                          height: 70,width: 170,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                            color: Colors.orange
                          ),
                          child:Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text('Start',
                                style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white
                                ),
                              ),
                              FloatingActionButton(onPressed: (){},
                              backgroundColor: Colors.white,
                              child: Icon(Icons.arrow_right,color: Colors.black12,size: 60,),)
                            ],
                          )
                        )
                      ],
                    )


                  ],
                ),),
              ))

            ],
          )
        ],

      ),

    );
  }
}
