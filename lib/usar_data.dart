import 'package:flutter/material.dart';
class Datas extends StatelessWidget {
 // const Datas({ Key? key }) : super(key: key);
final String usarname;
 final String password;

 Datas( {Key? key, 
  required this. usarname,
required this.password,
  
});
       
    
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(backgroundColor: Colors.cyan,
    title: Text('Usar Datas From Login Page'),),
      body:Center(
        child: Column(
          children:[
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Container(height: 50,width: 300,color: Colors.orange,
                child: Center(child: Text('User name : $usarname',style: TextStyle(color: Colors.white ),))),
            ), 
            
            
            Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Container(height: 50,width: 300,
                  color: Colors.green,
                    
                    child: Center(child: Text('Password : $password',style: TextStyle(color: Colors.white),))),
                
              
            )
          ],
        ),
      ) 
    );
  }
}