import 'package:flutter/material.dart';
class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
     return Scaffold(
        appBar: AppBar(
            title: Text("todo",style: TextStyle(fontSize: 25.0,fontFamily: "RaleWay"),),
            leading: IconButton(
              icon: Icon(Icons.menu),
              onPressed: (){},
            ),
        ),

        //add list view
        body: ListView(children:<Widget> [
          Container(
            height: 600,
            color: Colors.white,
          ),
          Container(
            height: 200,
            color: Colors.green,
          ),
           Container(
            height: 200,
            color: Colors.yellow,
          ),

        ],)
  );
  }
}