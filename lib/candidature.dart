import 'package:flutter/material.dart';

class Candidature extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      //appBar: AppBar(backgroundColor: Colors.deepOrange,),
      appBar: AppBar(title: Text('Formulaire de candidature'),backgroundColor: Colors.teal,centerTitle: true,),
      body: Center(child: Text('Candidature',style: TextStyle(fontSize: 22),),),
    );
  }
}
