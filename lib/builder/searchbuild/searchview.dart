import 'package:flutter/material.dart';

class Searchviewpage extends StatelessWidget {
  String pic1;
 // String title1;
 // String subtitle1;
  Searchviewpage({
    Key? key,
    required this.pic1,
   // required this.title1,
   // required this.subtitle1,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children:[ Container(
       height: 120,
       width: 200,
       margin: EdgeInsets.all(5),
      // color: Colors.grey,
       child: Column(children: [
       
         // SizedBox(width: 100,),
         Padding(
           padding: const EdgeInsets.all(5.0),
           child: Image.network(pic1, fit: BoxFit.cover,height: 80,width: 200,),

         ),
          
       ]),
            ),
      ]
    );
    
  }
}
