import 'package:flutter/material.dart';

class Propos extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      //appBar: AppBar(backgroundColor: Colors.deepOrange,),
      appBar: AppBar(title: Text(' A propos'),backgroundColor: Colors.teal,centerTitle: true,),
      body: Center(child: Text('A propos',style: TextStyle(fontSize: 22),),),
    );
  }
}
