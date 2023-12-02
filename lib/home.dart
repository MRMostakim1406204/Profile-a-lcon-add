import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 100,
        width: 100,
        child: CircleAvatar(
          backgroundImage: AssetImage("assets/Mostakim/mostakim.jpg"),
         ),

      ),
    );
  }
}