import 'package:flutter/material.dart';
import '../TabController/firsttab.dart';
import '../TabController/secondtab.dart';


class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text("Sadek's Garden",
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w500,
          fontStyle: FontStyle.italic,
          color: Colors.black54
        ),),
        centerTitle: true,
        leading: IconButton(onPressed: (){}, icon:Icon(Icons.menu,color: Colors.black54,)),
        actions: [
          
          IconButton(onPressed: (){}, icon: Icon(Icons.notifications,color: Colors.black54,))
          
          
          
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [

            Container(
              height: 48,
              decoration: BoxDecoration(
                color: Color(0xffedf7fb),
                borderRadius: BorderRadius.all(Radius.circular(30))
              ),
              child: TextField(
                enabled: false,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Search your plant',
                  prefixIcon: Icon(Icons.search),
                  suffixIcon: Icon(Icons.keyboard_voice)
                ),

              ),
            ),
            SizedBox(
              height: 16,
            ),
            Expanded(child: FirstTab(),
            flex: 3,),

            SizedBox(height: 10,),
            Expanded(child: SecondTab(),
            flex: 2,),


          ],
        ),
      )
    );
  }
}
