import 'package:flutter/material.dart';

class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return new Scaffold(
      appBar: new AppBar(title:new Text('Home'),),
      body: new Container(
        padding: EdgeInsets.all(32.0),
        child: new Center(
          child: new Column(
            children: <Widget>[
              new Text('this is the home screen'),
              new RaisedButton(
                color: Colors.lime,
                child: new Text('Next'),
                onPressed: (){Navigator.of(context).pushNamed('/second');},                
              )
            ]
          )
        )
      )
    );
  }
}