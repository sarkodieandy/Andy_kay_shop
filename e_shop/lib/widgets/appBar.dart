import 'package:e_shop/widgets/basicWidget.dart';
import 'package:flutter/material.dart';


class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: CollapsingList(),
      ),
    );
  }
}

class CollapsingList extends StatelessWidget {
  const CollapsingList({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverFixedExtentList(
          itemExtent: 200.0,
          delegate: SliverChildListDelegate(
            [
              BasicWidget(),
            ],
          ),
        ),
        SliverGrid.count(
          crossAxisSpacing: 10.0,
          mainAxisSpacing: 10,
          crossAxisCount: 2,
          children: <Widget>[
            Griditemnew(),
            Griditemnew(),
            Griditemnew(),
            Griditemnew(),
            Griditemnew(),
            Griditemnew(),
            Griditemnew(),
            Griditemnew(),
          ],
        ),
        SliverList(
          delegate: SliverChildListDelegate(
            [
              Spacebox(),
            ],
          ),
        ),
        SliverList(
          delegate: SliverChildListDelegate(
            [
              Listitemnew(),
            ],
          ),
        ),
        SliverList(
          delegate: SliverChildListDelegate(
            [
              SizedBox(height: 5),
              Listitemnew(),
              SizedBox(height: 5),
              Listitemnew(),
            ],
          ),
        ),
      ],
    );
  }
}

class Listitem extends StatelessWidget {
  const Listitem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * .25,
          padding: EdgeInsets.only(
            top: 5,
            right: 5,
            left: 5,
            bottom: 0,
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20)),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Container(
                  color: Colors.greenAccent,
                  width: MediaQuery.of(context).size.width,
                  child: Center(
                    child: Text("one"),
                  ),
                ),
                Container(
                  color: Colors.lightBlueAccent,
                  width: MediaQuery.of(context).size.width,
                  child: Center(
                    child: Text("one"),
                  ),
                ),
                Container(
                  color: Colors.pinkAccent,
                  width: MediaQuery.of(context).size.width,
                  child: Center(
                    child: Text("one"),
                  ),
                ),
                Container(
                  color: Colors.greenAccent,
                  width: MediaQuery.of(context).size.width,
                  child: Center(
                    child: Text("one"),
                  ),
                ),
                Container(
                  color: Colors.greenAccent,
                  width: MediaQuery.of(context).size.width,
                  child: Center(
                    child: Text("one"),
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}

class Listitemnew extends StatelessWidget {
  const Listitemnew({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Container(color: Colors.green, height: 150.0),
      SizedBox(height: 5),
      Container(color: Colors.cyan, height: 150.0),
      SizedBox(height: 5),
      Container(color: Colors.indigo, height: 150.0),
      SizedBox(height: 5),
      Container(color: Colors.blue, height: 150.0),
      SizedBox(height: 5),
    ]);
  }
}

class Spacebox extends StatelessWidget {
  const Spacebox({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: 10);
  }
}

class Griditemnew extends StatelessWidget {
  const Griditemnew({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(color: Colors.pink, height: 250.0),
    );
  }
}
