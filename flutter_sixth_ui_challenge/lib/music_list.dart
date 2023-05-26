import 'package:flutter/material.dart';
class MusicList extends StatelessWidget {
  const MusicList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      backgroundColor: Color(0xffdfe9fd),
      body: Padding(padding: EdgeInsets.all(15),
      child: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Text(''),
              SizedBox(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  
                ],
              ),
              SizedBox(),
              Column(
                children: [
                  
                ],
              )
            ],
          ),
        ),
      ),),
      
    ));
  }
}


class SampleContainer extends StatelessWidget {
  const SampleContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}


class ListTileWidget extends StatelessWidget {
  const ListTileWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}


