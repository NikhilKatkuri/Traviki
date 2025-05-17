import 'package:flutter/material.dart';

class BottomNavigationbar extends StatefulWidget {
  const BottomNavigationbar({super.key});

  @override
  State<BottomNavigationbar> createState() => _BottomNavigationbarState();
}

class _BottomNavigationbarState extends State<BottomNavigationbar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     bottomNavigationBar: NavigationBar(destinations:
     [
      Container(color: Colors.orange,),
      Container(color: Colors.green,),
      Container(color: Colors.red,),
      Container(color: Colors.pink,),
     ] 
     ), 
    );
  }
}