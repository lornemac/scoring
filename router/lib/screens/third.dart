import 'package:flutter/material.dart';

class Third extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return new Scaffold(
      appBar: new AppBar(title:new Text('third'),),
      body: new Container(
        padding: EdgeInsets.all(32.0),
        child: new Center(
          child: new Column(
            children: <Widget>[
              new Text('this is the third screen'),
              new RaisedButton(
                color: Colors.green,
                child: new Text('Back'),
                onPressed: (){Navigator.of(context).pop();},
              ),
              new RaisedButton(
                color: Colors.amber,
                child: new Text('Next'),
                onPressed: (){Navigator.of(context).pushNamedAndRemoveUntil('/home', ((Route<dynamic> route) => false));},       
                          
              )
            ]
          )
        )
      )
    );
  }
}