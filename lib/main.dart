import 'dart:math';

import 'package:flutter/material.dart';

void main() =>
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Dice App",
    home: HomePage(),
  ));
  
  
  class HomePage extends StatefulWidget {
    const HomePage({Key? key}) : super(key: key);
  
    @override
    State<HomePage> createState() => _HomePageState();
  }
  
  class _HomePageState extends State<HomePage> {
    int diceNumber = 1;

    changeDice(){
      setState(() {
        diceNumber = Random().nextInt(6) + 1;
      });
    }

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text("Dice Roller"),
          centerTitle: true,
        ),
        body: Column(
          children: [
            SizedBox(height: 30),

            Center( child : Image.asset("assets/Dice$diceNumber.png",height: 250,)),
            //button
            MaterialButton(
              onPressed: changeDice,
              color: Colors.blue,
            child: Text("Roll",style: TextStyle(color: Colors.white),)
              ,),
            SizedBox(height: 70),
            Text("Developed By Nirajan",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold),)
          ],
        ),

      );
    }
  }

