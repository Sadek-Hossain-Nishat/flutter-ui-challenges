
import 'package:flutter/material.dart';


class ReuseableContainertwo extends StatefulWidget {


  final String name;
  final String price;
  final String url;
  ReuseableContainertwo({ required this.name,required this.price,  required this.url});

  @override
  State<ReuseableContainertwo> createState() => _ReuseableContainertwoState();
}

class _ReuseableContainertwoState extends State<ReuseableContainertwo> {

  bool ontap = true;
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 120,
        decoration: BoxDecoration(
            color: Color(0xffedf7fb),
            borderRadius: BorderRadius.all(
                Radius.circular(20)
            )
        ),

        child: Column(
          children: [


            Padding(
              padding: const EdgeInsets.only(top: 8.0,right: 8),
              child: Align(
                alignment: Alignment.bottomRight,
                child: GestureDetector(

                  onTap: (){

                    setState(() {
                      ontap =!ontap;
                    });

                  },

                  child: CircleAvatar(
                    radius: 15,
                    backgroundColor: Colors.white,
                    child:
                    ontap==false?

                    Icon(Icons.favorite_border,
                    ):Icon(Icons.favorite),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                child:
                Image.asset(widget.url,
                  fit: BoxFit.cover,),
              ),
            ),

            Text(widget.name,
              style: TextStyle(
                  fontSize: 14,
                  color: Colors.black54,
                  fontWeight: FontWeight.bold
              ),),

            SizedBox(height: 8,),
            Text(widget.price,
                style: TextStyle(
                    fontSize: 17,
                    color: Colors.black54,
                    fontWeight: FontWeight.bold
                )),
            SizedBox(
              height: 12,
            )
          ],
        )
    );
  }
}

