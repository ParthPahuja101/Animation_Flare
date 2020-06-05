import 'package:flutter/material.dart';
import 'package:flare_flutter/flare_actor.dart';
class testing extends StatefulWidget {
  @override
  _testingState createState() => _testingState();
}

class _testingState extends State<testing> {
    bool s=false;
   
  @override
  Widget build(BuildContext context) {
  
   
  
    return Scaffold(
      
      appBar: AppBar(
       title: Text("Test Flare",style: TextStyle(color:Colors.black),),
      ),
      body: Center(
        child: FlareActor('assets/test.flr',
        animation: s?'no':'left',),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed:(){
          setState(() {
            s = !s;
          });
        },
       
        child: Icon(s?Icons.play_arrow:Icons.pause),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}