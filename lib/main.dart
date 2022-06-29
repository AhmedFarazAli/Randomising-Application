import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(

        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          backgroundColor: Colors.black45,
          leading: Icon(Icons.games),
          title: Text(
            'Randomising Application',
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 20.0,
              fontStyle: FontStyle.italic,
            ),
          ),
        ),
        body: SafeArea(
          child: Randomm(),
        ),
      ),
    ),
  );
}

class Randomm extends StatefulWidget {
  const Randomm({Key? key}) : super(key: key);
  @override
  State<Randomm> createState() => _RandommState();
}

class _RandommState extends State<Randomm > {
  int num=1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: RaisedButton(
        onPressed: (){
          setState(() {
            num=Random().nextInt(5)+1;
          });
        },
        child: Expanded(child: Image.asset('images/ball$num.png')),
      ),
    );
  }
}
