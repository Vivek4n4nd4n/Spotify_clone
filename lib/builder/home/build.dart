import 'package:flut_loginpage/spotifymodel.dart/constract.dart';

import 'package:flut_loginpage/spotifymodel.dart/Bottombar.dart';
import 'package:flut_loginpage/builder/home/homedesign.dart';
import 'package:flut_loginpage/builder/home/viewtoopage.dart';
import 'package:flut_loginpage/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Builderpage extends StatefulWidget {
  const Builderpage({Key? key}) : super(key: key);

  @override
  State<Builderpage> createState() => _BuilderpageState();
}

class _BuilderpageState extends State<Builderpage> {
  List<Koliwood> musicLatest = [];
  List<Koliwood> hindhi = [];
  List<Koliwood> malayalam = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    musicLatest = Songs();
    hindhi = hindimusic();
    malayalam = Malaisongs();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
      backgroundColor: Colors.black,
      body: NestedScrollView(
        headerSliverBuilder: (context, InnerBoxIsScrolled) => [
         const SliverAppBar(
              floating: true,
              backgroundColor: Colors.transparent,
              title: Text(
                'Recently Played...',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              actions: [
                Icon(Icons.notifications, color: Colors.white),
                Icon(
                  Icons.history,
                  color: Colors.white,
                ),
                Icon(
                  Icons.settings,
                  color: Colors.white,
                ),
              ])
        ],
        body: Column(crossAxisAlignment: CrossAxisAlignment.start,
         children: [
           
          Expanded(
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: musicLatest.length,
                itemBuilder: (context, index) {
                  return Viewpage(
                      pic1: musicLatest[index].pic,
                      title1: musicLatest[index].title,
                      subtitle1: musicLatest[index].subtitle);
                }),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 2),
            child: Text('To get you started',
                style: TextStyle(color: Colors.white, fontSize: 20)),
          ),
          //   Spacer(),
          Expanded(
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: hindhi.length,
                itemBuilder: (context, index) {
                  return Viewpage1(
                      pic1: hindhi[index].pic,
                      title1: hindhi[index].title,
                      subtitle1: hindhi[index].subtitle);
                }),
          ),
        
          Text('Try something else',
              style: TextStyle(color: Colors.white, fontSize: 20)),
          //Spacer(),
          Expanded(
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: malayalam.length,
                itemBuilder: (context, index) {
                  return Viewpage(
                      pic1:malayalam[index].pic,
                      title1: malayalam[index].title,
                      subtitle1: malayalam[index].subtitle);
                }),
          ),
            
             
          //   Spacer(),

          //Spacer(),
         
         
         
        ]),
      ));
}
