

import 'package:chart_app/Screens/drawer_screen.dart';
import 'package:flutter/material.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      
        title: Text(""),

        
      ),
 drawer: DrawerScreen(radius: 20, personname: 'jay', personcountry: 'India', personemail: 'jay@gmail.com',),
    );
  }
}