import 'package:flutter/material.dart';

class Accountpage extends StatelessWidget {
  const Accountpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            expandedHeight: 150.0,
            floating: false,
            pinned: true,
            automaticallyImplyLeading:
                false, // this will hide Drawer hamburger icon
            leading: IconButton(
              icon: Icon(Icons.arrow_back, color: Colors.black, size: 24),
              onPressed: () {
                Navigator.pop(context);
              },
            ),

            actions: <Widget>[Container()],

            backgroundColor: Colors.greenAccent,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                "Manage Address",
                style: TextStyle(color: Colors.black87, fontSize: 20),
              ),
            ),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(30),
                    bottomLeft: Radius.circular(30))),
          ),
          SliverList(
              delegate: SliverChildListDelegate([
            SafeArea(
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                padding: EdgeInsets.only(
                  top: 0,
                  right: 5,
                  left: 5,
                  bottom: 10,
                ),
                child: Column(children: <Widget>[Orderitem()]),
              ),
            ),
          ]))
        ],
      ),
    );
  }
}

class Orderitem extends StatelessWidget {
  const Orderitem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: 20,
      ),
      child: Column(children: <Widget>[
        Card(
          elevation: 7,
          shadowColor: Colors.lightGreenAccent,
          //margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 16.0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          color: Colors.white,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const ListTile(
                contentPadding: EdgeInsets.all(10),
                leading: Icon(
                  Icons.card_travel,
                  size: 30,
                ),
                dense: false,
                title: Text('salman'),
                subtitle: Text('new arrival'),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
