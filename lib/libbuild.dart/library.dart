import 'package:flutter/material.dart';

class Libpage extends StatelessWidget {
  const Libpage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
backgroundColor: Colors.black,
appBar: AppBar(backgroundColor: Colors.black,
  leading: Icon(Icons.room_rounded,color: Colors.white,),
title:Text('Your Library',style: TextStyle(color: Colors.white),),
actions: [Icon(Icons.search,color: Colors.white,),SizedBox(width: 10,),
Icon(Icons.add,color: Colors.white,)]),
      body: Center(
        child: Text('Library Page',style: TextStyle(color: Colors.white, fontSize: 20),
     ),
      ) );
  }
}