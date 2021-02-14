import 'package:flutter/material.dart';
import './accueil.dart';
import './formation.dart';
import './propos.dart';
import './candidature.dart';
import './contact.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CfpHome(),
    );
  }
}

class CfpHome extends StatefulWidget {
  @override
  _CfpHomeState createState() => _CfpHomeState();
}

class _CfpHomeState extends State<CfpHome> {
  int _selectedIndex = 0;
  List<Widget> _options = <Widget>[
    Accueil(),
    Propos(),
    Formation(),
    Candidature(),
    Contact(),
    /* Text('Accueil', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold, color: Colors.deepOrange)),
    Text('A Propos', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold, color: Colors.deepOrange)),
    Text('Formations', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold, color: Colors.deepOrange)),
    Text('Candidature', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold, color: Colors.deepOrange)),
    Text('Contacts', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold, color: Colors.deepOrange)), */
  ];

  void _onItemTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //bar de navigation
      bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Accueil',
                backgroundColor: Colors.teal
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.info_outline),
                label: 'A Propos',
                backgroundColor: Colors.teal,
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.book),
                label: 'Formations',
                backgroundColor: Colors.teal
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.school),
                label: 'Candidature',
                backgroundColor: Colors.teal
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.contacts),
              label: 'Contacts',
              backgroundColor: Colors.teal,
            ),
          ],
          type: BottomNavigationBarType.shifting,
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey,
          iconSize: 30,
          onTap: _onItemTap,
          elevation: 5
      ),
      //appBar: AppBar(title: Text('CFP-GETECH'),backgroundColor: Colors.teal,centerTitle: true,),
      body: Center(child: _options.elementAt(_selectedIndex),
        //Text('Bienvenue', style: TextStyle(fontSize: 22, color: Colors.deepOrange))
      ),
    );
  }
}
