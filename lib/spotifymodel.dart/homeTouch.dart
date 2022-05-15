import 'package:flutter/material.dart';

class Hometouchpage extends StatelessWidget {
  const Hometouchpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
  double Screenwidth=  MediaQuery.of(context).size.height;
   double Screenhight= MediaQuery.of(context).size.width;
    return Scaffold(backgroundColor: Colors.black,
      appBar: AppBar(),
      body: SingleChildScrollView(scrollDirection:Axis.vertical,
        child: Container(height:900,width: 500,
          child: Image.network('https://drive.google.com/uc?export=view&id=1GA3kpVaitvklh0QC-w01EsYjcpYIt5X9')
              
            
        ),
      ),
    );
  }
}
