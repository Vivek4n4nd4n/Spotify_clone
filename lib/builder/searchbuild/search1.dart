// ignore_for_file: prefer_const_constructors

import 'package:flut_loginpage/builder/searchbuild/searchview.dart';
import 'package:flut_loginpage/spotifymodel.dart/constract.dart';
import 'package:flut_loginpage/builder/home/viewtoopage.dart';
import 'package:flutter/material.dart';

class Searchpage extends StatefulWidget {


 const   Searchpage({Key? key}): super(key: key); 

  @override
  State<Searchpage> createState() => _SearchpageState();
}

class _SearchpageState extends State<Searchpage> {
  List<Koliwood> searchdata = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    searchdata = Searchsongs();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.black,
          body: NestedScrollView(
            headerSliverBuilder: (context, InnerBoxIsScrolled) => [
              const SliverAppBar(
                floating: true,
                backgroundColor: Colors.transparent,
                title: Text(
                  'Search',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              )
            ],
            body: 
                Column(
                  children: [
                                     Padding(
                                       padding: const EdgeInsets.all(8.0),
                                       child: Container(height: 50,width: 400,color: Colors.white,
                                       child: Row(
                                         children: [SizedBox(width: 10,),
                                           Icon(Icons.search,color: Colors.black,),
                              SizedBox(width: 20,)  ,         Center(child: Text('Artists, Songs or Podcosts',style: TextStyle(color: Colors.black),)),
                                         ],
                                       ),),
                                     ),
                    Expanded(
                      child: GridView.builder(
                        shrinkWrap: true,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                          itemCount: searchdata.length,
                          itemBuilder: (context, index) {
                            return Searchviewpage(
                              pic1: searchdata[index].pic,
                            //  title1: searchdata[index].title,
                              //subtitle1: searchdata[index].subtitle,
                            );
                          }),
                    ),
                       
    
                  ],
                ),
              
                  
        
        )  ),
    );

    
  }
}
