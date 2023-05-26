import 'package:flutter/material.dart';

import 'cardbox.dart';





class Yoga extends StatefulWidget {
  const Yoga({Key? key}) : super(key: key);

  @override
  State<Yoga> createState() => _YogaState();
}

class _YogaState extends State<Yoga> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return SafeArea(child: Scaffold(
      body: Padding(padding: EdgeInsets.all(20),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('For You',
                style:TextStyle(fontSize:35,fontWeight:FontWeight.bold)),
                Card(
                  elevation:5,
                  child:Container(
                    height: 40,
                    width: 50,
                    child: Icon(Icons.home),
                  )
                )
                
              ],

            ),
            SizedBox(
              height: 20,
            ),
            Stack(
              clipBehavior: Clip.none,
              alignment: Alignment.bottomCenter,
              children: [
                Container(
                  height: 200,
                  width: width,
                  decoration: BoxDecoration(

                    borderRadius: BorderRadius.all(Radius.circular(25))

                  ),
                  child: ClipRRect(
                   borderRadius: BorderRadius.all(Radius.circular(25))
                       ,
                    child: Image.network('https://cdn.pixabay.com/photo/2019/03/22/19/40/meteora-4074026__340.jpg',
                    fit: BoxFit.cover,),

                  ),
                ),
                Positioned(
                  bottom: -55

                ,child: Card(
                  elevation: 5,
                  child: Container(
                    child: Padding(padding: EdgeInsets.all(10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('FEATURED'),
                        Text('Hatha Yoga:Beginner',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold
                          ),
                          
                        ),
                        Text('A well-suited class for your goals')
                      ],

                    ),),
                    height: 90,
                    width: width*0.8,
                  )
                ))
              ],
            ),
            SizedBox(
              height: 90,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [

                Card(
                  elevation:3,
                  child:Container(
                    height: 25,
                    width: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(100))

                    ),
                    child: Center(
                      child: Text('Styles'),
                    ),
                  )
                ),
                Text('Classes'),
                Text('Teachers')


              ],
            ),
            SizedBox(
              height: 25,
            ),
            

           Cardbox(text1: 'Hatha Yoga',
               text2: 'Explore your inner landscape ',
               text3: 'through yoga poses',
               width: width,
               url: 'https://i.pinimg.com/236x/16/bc/5c/16bc5c3c5b872b8594eaf1a301999d1f.jpg'),
            SizedBox(
              height: 25,
            ),
            Cardbox(text1: 'Yin Yoga',
                text2: 'Yin Yoga is a chance to find ',
                text3: 'balance for the body and mind',
                width: width,
                url: 'https://i.pinimg.com/236x/3d/02/00/3d0200a349d42be2b72360521af54eb1.jpg'),

          ],
        ),

      ),),


      )
      
    );
  }
}
