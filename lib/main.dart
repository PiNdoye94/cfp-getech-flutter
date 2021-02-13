import 'package:flutter/material.dart';
import './quiz.dart';
import './gallery.dart';
import './weather.dart';
import './camera.dart';

void main() {
  runApp(MaterialApp(home: MyApp(),));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children:<Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: [Colors.deepOrange,Colors.white])
              ),
                child: Center(
                  child: CircleAvatar(
                      radius: 40,
                      backgroundImage: AssetImage('images/pisco.png'),
                  ),
                ),
            ),
            ListTile(
              title: Text('Quiz', style: TextStyle(fontSize: 20),),
              onTap: (){
                Navigator.of(context).pop();//pour fermer la page quiz
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Quiz()));//route
              },
            ),
            Divider(color: Colors.deepOrange,),
            ListTile(
              title: Text('Weather', style: TextStyle(fontSize: 20),),
              onTap: (){
                Navigator.of(context).pop();//pour fermer la page quiz
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Weather()));
              },
            ),
            Divider(color: Colors.deepOrange,),
            ListTile(
              title: Text('Gallery', style: TextStyle(fontSize: 20),),
              onTap: (){
                Navigator.of(context).pop();//pour fermer la page quiz
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Gallery()));
              },
            ),
            Divider(color: Colors.deepOrange,),
            ListTile(
              title: Text('Camera', style: TextStyle(fontSize: 20),),
              onTap: (){
                Navigator.of(context).pop();//pour fermer la page quiz
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Camera()));
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(title: Text('My APP'),backgroundColor: Colors.deepOrange,),
      body: Center(child:
        Text('Hello IIBDCC', style: TextStyle(fontSize: 22, color: Colors.deepOrange),)),
    );
  }
}
