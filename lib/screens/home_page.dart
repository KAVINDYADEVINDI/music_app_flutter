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
            // flexibleSpace: Icon(
            //   Icons.photo_camera,
            //   size: 75.0,
            // ),
           flexibleSpace: Image(
            image: AssetImage('assets/back.jpeg'),
            fit: BoxFit.cover,
            ),
          //set bottom
           bottom: TabBar(
            //create 3 tabs
            tabs: [
              Tab(icon: Icon(Icons.directions_car),text: 'To Do',),
              Tab(icon: Icon(Icons.directions_transit),text: 'In Progress',),
              Tab(icon: Icon(Icons.directions_bike),text: 'Done',),
            ],
          ),

          elevation: 3.0, //shadow of the bottom
          backgroundColor: Colors.blueAccent[700],//set backgroud color
           
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
