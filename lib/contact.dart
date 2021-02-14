import 'package:flutter/material.dart';

class Contact extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      //appBar: AppBar(backgroundColor: Colors.deepOrange,),
      appBar: AppBar(title: Text('Contacts'),backgroundColor: Colors.teal,centerTitle: true,),
      body: Center(child: Text('Contact',style: TextStyle(fontSize: 22),),),
    );
  }
}