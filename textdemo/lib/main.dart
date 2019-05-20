import 'package:flutter/material.dart';


void main() {
  runApp(new MaterialApp(
    theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.lightBlue[800],
        accentColor: Colors.cyan[600]),
    home: new MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  MyAppState createState() => new MyAppState();
}

class MyAppState extends State<MyApp> {
  String _text = '';

  void _onPressed() {
    print('the value is $_text');
  }

  void _onPressed2() {
    print(_controller.text);
  }

  void onChanged(String value) {
    print(value);
    setState(() {
      _text = value;
    });
  }

  final TextEditingController _controller = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text('Text demo')),
      body: new Container(
      padding: new EdgeInsets.all(32.0),
        
          child: new Column(
            children: <Widget>[
              new TextField(
                onChanged: (String value) {
                  onChanged(value);
                },
                controller: _controller,
                //maxLines: 3,
                //autocorrect: true,
                //obscureText: false,  //passwords
                decoration: new InputDecoration(
                    icon: new Icon(Icons.add_a_photo),
                    hintText: 'type something here',
                    labelText: 'what is your name?'),
              ),
              new RaisedButton(
                  child: new Text('Click me!'),
                  //onPressed: (){_onPressed();}
                  onPressed: () {
                    _onPressed2();
                  })
            ],
          ),
        
      ),
    );
  }
}
