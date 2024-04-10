import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          title: Center(
              child: Text('DICE')
          ),
          backgroundColor: Colors.black,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int ldn = Random().nextInt(6)+1;
  int rdn = Random().nextInt(6)+1;

  void changeDiceFace(){
    setState(() {
      ldn = Random().nextInt(6)+1;
      rdn = Random().nextInt(6)+1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(child:
            TextButton(
                onPressed: (){
                  changeDiceFace();
                },
                child: Image.asset('images/dice_img$ldn.png',)),
          ),
          Expanded(child:
            TextButton(
                onPressed: (){
                  changeDiceFace();
                },
                child: Image.asset('images/dice_img$rdn.png',)),
          ),
        ],
      ),
    );
  }
}



