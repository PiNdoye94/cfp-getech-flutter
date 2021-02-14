import 'package:flutter/material.dart';

class Formation extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      //appBar: AppBar(backgroundColor: Colors.deepOrange,),
      appBar: AppBar(title: Text('Nos formations'),backgroundColor: Colors.teal,centerTitle: true,),
      body: Center(child: Text('Formations cfp getech',style: TextStyle(fontSize: 22),),),
    );
  }
}
