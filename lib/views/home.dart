import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
     return Scaffold( //it has appbar,body
          appBar: AppBar(
            title: Text("todo",style: TextStyle(fontSize: 25.0,fontFamily: "RaleWay"),),
            leading: IconButton(
              icon: Icon(Icons.menu),
              onPressed: (){},
            ),

            actions: [
              IconButton(
                icon: Icon(Icons.search),//search button
                onPressed: (){},
              ),

              IconButton(
                icon: Icon(Icons.more_vert),
                onPressed: (){},
              ),
            ],//widget array

            //set back image in background of appbar
            flexibleSpace: Icon(
              Icons.photo_camera,
              size: 75.0,
            ),
           
          //set bottom
          

          elevation: 3.0, //shadow of the bottom
          backgroundColor: Colors.blueAccent[700],//set backgroud color
           
        ),

     );
  }
}