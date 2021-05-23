import 'package:flutter/material.dart';
import 'second_screen.dart';

class MyHomePage extends StatelessWidget{
  @override
    Widget build(BuildContext context) {
     return DefaultTabController(
       length: 3,
       //scaffold
       child: Scaffold( //it has appbar,body
          appBar: AppBar(
            title: Text("todo",style: TextStyle(fontSize: 25.0,fontFamily: "RaleWay"),),
            leading: IconButton(
              icon: Icon(Icons.menu),
              onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (_){
                  return SecondScreen();
                }
                ));
              },
            ),

           
        //body in app bar
        body: TabBarView(
          children: [
            tab1(),
            Icon(Icons.directions_transit),
            Icon(Icons.directions_bike),
          ],
          
        ),
        

       ),
     );
    }
}

Widget tab1(){
  return Container(
    child: Center(
      child: Text("tab1"),
    ),
  );
}
