import 'package:flutter/material.dart';

class BodyWidget extends StatelessWidget {
  const BodyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.vertical,
      children: <Widget>[
        Container(
          height: 100,
          color: Colors.greenAccent,
          margin: EdgeInsets.all(10),
          child: Center(
            child: Text("hello"),
          ),
        ),
        Container(
          color: Colors.blueAccent,
          height: 100,
          margin: EdgeInsets.all(10),
          child: Center(
            child: Text("one",
                style: TextStyle(fontSize: 18, color: Colors.black)),
          ),
        ),
        Container(
          color: Colors.redAccent,
          height: 100,
          margin: EdgeInsets.all(10),
          child: Center(
            child: Text("one",
                style: TextStyle(fontSize: 18, color: Colors.black)),
          ),
        ),
        Container(
          color: Colors.blueAccent,
          height: 100,
          margin: EdgeInsets.all(10),
          child: Center(
            child: Text("one",
                style: TextStyle(fontSize: 18, color: Colors.black)),
          ),
        ),
        Container(
          color: Colors.greenAccent,
          height: 100,
          margin: EdgeInsets.all(10),
          child: Center(
            child: Text("one",
                style: TextStyle(fontSize: 18, color: Colors.black)),
          ),
        ),
        Container(
          color: Colors.blueAccent,
          height: 100,
          margin: EdgeInsets.all(10),
          child: Center(
            child: Text("one",
                style: TextStyle(fontSize: 18, color: Colors.black)),
          ),
        ),
        Container(
          color: Colors.yellowAccent,
          height: 100,
          margin: EdgeInsets.all(10),
          child: Center(
            child: Text("one",
                style: TextStyle(fontSize: 18, color: Colors.black)),
          ),
        ),
        Container(
          color: Colors.blueAccent,
          height: 100,
          margin: EdgeInsets.all(10),
          child: Center(
            child: Text("one",
                style: TextStyle(fontSize: 18, color: Colors.black)),
          ),
        ),
        Container(
          color: Colors.brown,
          height: 100,
          margin: EdgeInsets.all(10),
          child: Center(
            child: Text("one"),
          ),
        )
      ],
    );
  }
}
