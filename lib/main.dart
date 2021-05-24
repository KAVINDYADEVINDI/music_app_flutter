import 'package:first_app/views/upload.dart';
import 'package:flutter/material.dart';


import 'views/home.dart';
import 'views/upload.dart';

void main() => runApp(
   MyApp(), // Wrap your app
);

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int currentindex=0;
  List tabs=[
    Home(),
    Upload(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Add the builder here
      theme: ThemeData(
        // Define the default brightness and colors.
        brightness: Brightness.light,
        // Define the default font family.
        fontFamily: 'Georgia',

        // Define the default TextTheme. Use this to specify the default
        // text styling for headlines, titles, bodies of text, and more.
        textTheme: TextTheme(
          headline1: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
          headline6: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
          bodyText2: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
        ),
      ),

      debugShowCheckedModeBanner:false ,//delete banner in appbar

   
      home:Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title:Text('Music Player App',style:TextStyle(fontSize: 20.0)
          ),
          elevation: 13.0, //shadow of the bottom
          // backgroundColor: Colors.blueAccent[1000],
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.blue,Colors.black],
                begin:Alignment.bottomLeft ,
                end: Alignment.topLeft,
              ),
            ),
          ),
        ),
        
        body: tabs[currentindex],
        // body:Container(
        //  decoration:BoxDecoration(
        //     image: DecorationImage(image: 
        //       AssetImage('assets/k.jpg'),
        //       fit: BoxFit.cover,
        //     ),
        //   )
        // ) ,

        bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentindex,
          items: [
            BottomNavigationBarItem(
              title: Text("Home"),
              icon: Icon(Icons.home),
            ),
            BottomNavigationBarItem(
              title: Text("Add Music"),
              icon: Icon(Icons.cloud_upload),  
            ),

          ],
          onTap:(index){
            setState(() {
              currentindex=index;          
            });
            
          } ,
         
        ),

      )
      
     
    );
  }
}
