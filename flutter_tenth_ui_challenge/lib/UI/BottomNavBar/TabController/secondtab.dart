import 'package:flutter/material.dart';

import '../../../CustomWidget/reusablecontainertwo.dart';
class SecondTab extends StatelessWidget {
  SecondTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: DefaultTabController(
      length: 4,
      child: Scaffold(

        appBar: PreferredSize(
          preferredSize: Size.fromHeight(24),
          child:
          TabBar(
              isScrollable: false,
              labelColor: Colors.black54,
              unselectedLabelColor: Colors.black38,
              labelStyle: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold
              ),

              unselectedLabelStyle: TextStyle(

                  fontSize: 16,
                  fontWeight: FontWeight.bold

              ),
              indicatorColor: Colors.transparent,
              tabs: [
                Tab(
                  text: 'Synthesis',
                ),

                Tab(
                  text: 'Organic',
                ),

                Tab(
                  text: 'Outdoor',
                ),

                Tab(
                  text: 'Indoor',
                ),

              ]),
        ),

        body: TabBarView(children: [


          Synthesis(),
          Organic(),
          Outdoor(),
          Indoor()

        ]),

      ),
    ));
  }
}



class Synthesis extends StatefulWidget {
  const Synthesis({Key? key}) : super(key: key);

  @override
  State<Synthesis> createState() => _SynthesisState();
}

class _SynthesisState extends State<Synthesis> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ReuseableContainertwo(
            name: 'Ceramic round',
            price: '\$ 50.49',
            url: 'assets/ceramicround.png',
          ),
          SizedBox(width: 15,),

          ReuseableContainertwo(
            name: 'Top Plant',
            price: '\$ 50.49',
            url: 'assets/img1.png',
          ),

          SizedBox(width: 15,),
          ReuseableContainertwo(
            name: 'Top Plant',
            price: '\$ 50.49',
            url: 'assets/img2.png',
          ),
        ],
      ),
    );
  }
}


class Organic extends StatelessWidget {
  const Organic({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Organic'),
    );
  }
}


class Outdoor extends StatelessWidget {
  const Outdoor({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Outdoor'),
    );
  }
}


class Indoor extends StatelessWidget {
  const Indoor({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Indoor'),
    );
  }
}



