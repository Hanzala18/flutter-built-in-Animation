import 'package:flutter/material.dart';

class SandBox extends StatefulWidget {
  @override
  _SandBoxState createState() => _SandBoxState();
}

class _SandBoxState extends State<SandBox> {
  double _margin = 20;
  double _opacity = 1;
  double _width = 200;
  Color _color = Colors.blue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedContainer(
        duration: Duration(seconds: 1),
        margin: EdgeInsets.all(_margin),
        width: _width,
        color: _color,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(padding: EdgeInsets.only(top: 10.0)),
            RaisedButton(
                child: Text("Animate margin"),
                onPressed: () => setState(() => _margin = 50)),
            Padding(padding: EdgeInsets.only(top: 20.0)),
            RaisedButton(
                child: Text("Animate color"),
                onPressed: () => setState(() => _color = Colors.purple)),
            Padding(padding: EdgeInsets.only(top: 20.0)),
            RaisedButton(
                child: Text("Animate width"),
                onPressed: () => setState(() => _width = 500)),
            Padding(padding: EdgeInsets.only(top: 20.0)),
            RaisedButton(
                child: Text("Animate opacity"),
                onPressed: () => setState(() => _opacity = 0)),
            AnimatedOpacity(
              duration: Duration(seconds: 2),
              opacity: _opacity,
              child: Text(
                "Hide me",
                style: TextStyle(color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
