import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
runApp(new MaterialApp(
  home: new MyApp(),
));
}

class MyApp extends StatefulWidget {
  @override
  MyAppState createState() => new MyAppState();
}

class MyAppState extends State<MyApp>{

  
int _selected = 0;

void onChanged(int value){
  setState(() {
      _selected= value;
    });
}

List<Widget> makeRadios(){
      List<Widget> list = new List<Widget>();

  for (int i = 0; i < 3; i++){
    list.add(new Row(
      children: <Widget>[
        new Text('Radio $i'),
        new Radio(value: i, groupValue: _selected, onChanged: (int value){onChanged(value);})
      ],
      ));
    print(i);
    
    
  }
  
  for (int i = 0; i<3; i++){
    list.add(
      new RadioListTile(
        value:i, onChanged: (int value){onChanged(value);}, groupValue: _selected,
        title: new Text('radio $i'),
        activeColor: Colors.red,
        subtitle: new Text('subtitle here'),
        secondary: new Icon(Icons.grid_on),
      )
    );
  }
  
  return list;
  }

@override
Widget build(BuildContext context){
  return new Scaffold(
    appBar: new AppBar(
      title: new Text('Checkbox')
    ),
    body: new Container(
      padding: EdgeInsets.all(32.0),
      child: new Center(
        child: new Column(
          children: makeRadios(),
        )
      )
    )
  );
}

}
