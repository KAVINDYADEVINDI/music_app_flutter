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
    

