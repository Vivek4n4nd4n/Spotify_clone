import 'dart:ui';

import 'package:flut_loginpage/spotifymodel.dart/homeTouch.dart';
import 'package:flutter/material.dart';

class Viewpage extends StatelessWidget {
  String pic1;
  String title1;
  String subtitle1;
  Viewpage({
    Key? key,
    required this.pic1,
    required this.title1,
    required this.subtitle1,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children:[ GestureDetector(onTap: (() {
        Navigator.push(context,
         MaterialPageRoute(builder: (context)=>Hometouchpage()));
      }),
        child: Container(
         height: 180,
         width: 100,
         margin: EdgeInsets.all(5),
        // color: Colors.grey,
         child: Column(children: [
         
           // SizedBox(width: 100,),
           Padding(
             padding: const EdgeInsets.all(5.0),
             child: Image.network(pic1, fit: BoxFit.cover,height: 80,width: 100,),
      
           ),
             Text(
             title1,
             style: TextStyle(color: Colors.white),
           ),
         ]),
              ),
      ),
      ]
    );
    
  }
}
