import 'package:flutter/material.dart';
import 'dart:math';

import 'package:flutter/services.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Center(child: Text('Dicee')),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}



class DicePage extends StatefulWidget {


  @override
  State<DicePage> createState() => _State();
}

class _State extends State<DicePage> {
 int Leftbutton =1;
 int rightbutton=1;
    @override
    Widget build(BuildContext context) {
return Center(
child: Row(
children: [
Expanded(

child: TextButton(
child: Image.asset('images/dice$Leftbutton.png'),

onPressed: (){
  setState(() {
    Leftbutton=Random().nextInt(6)+1;
    rightbutton=Random().nextInt(6)+1;
    print('left is pressed no=$Leftbutton');
  });

},
),
),

Expanded(

child: TextButton(
    child: Image.asset('images/dice$rightbutton.png'),
onPressed: (){
      setState(() {
        buttons(Leftbutton, rightbutton);
      print('right is pressed no=$rightbutton');
      }
      );



      }
),
),

],

),
);
  }
}
void buttons( int Leftbutton ,int rightbutton ){
  Leftbutton=Random().nextInt(6)+1;
  rightbutton=Random().nextInt(6)+1;
}
