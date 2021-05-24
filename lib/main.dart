import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());  
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int currentindex=0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        // Define the default brightness and colors.
        brightness: Brightness.dark,
        primaryColor: Colors.lightBlue[800],
        accentColor: Colors.cyan[600],

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
          title:Text('Music Player App')
        ),
        body:Container(
         decoration:BoxDecoration(
            image: DecorationImage(image: 
              AssetImage('assets/k.jpg'),
              fit: BoxFit.cover,
            ),
          )
        ) ,

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
        ),

      )
     
    );
  }
}
