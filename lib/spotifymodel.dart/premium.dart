// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Premium
 extends StatelessWidget {
  const Premium
  ({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Color.fromRGBO(0, 0, 0, 1),
      body: Center(child: Container( child: Center(child: Text('Ends soon: 3 months of premium for free',style: TextStyle(fontSize: 20),)),
        color: Colors.white54,height: 200,width: 300,),
 ),
    );
  }
}