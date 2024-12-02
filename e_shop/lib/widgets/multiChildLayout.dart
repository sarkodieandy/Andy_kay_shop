import 'package:flutter/material.dart';
//import 'package:salmanapp/widgets/appBar.dart';

class Multichildlayout extends StatelessWidget {
  const Multichildlayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      color: Colors.white,
      child: GridView.count(
        crossAxisCount: 2,
        children: <Widget>[
          Container(
            color: Colors.greenAccent,
            margin: EdgeInsets.all(10),
            child: Center(
              child: Text("hello"),
            ),
          ),
          Container(
            color: Colors.blueAccent,
            margin: EdgeInsets.all(10),
            child: Center(
              child: Text("one",
                  style: TextStyle(fontSize: 18, color: Colors.black)),
            ),
          ),
          Container(
            color: Colors.brown,
            margin: EdgeInsets.all(10),
            child: Center(
              child: Text("one"),
            ),
          ),
          Container(
            color: Colors.yellowAccent,
            margin: EdgeInsets.all(10),
            child: Center(
              child: Text("one"),
            ),
          ),
        ],
      ),
    );
  }
}
