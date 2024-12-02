import 'package:flutter/material.dart';

class Addresspage extends StatelessWidget {
  const Addresspage({super.key});

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
                child: Column(children: <Widget>[Address()]),
              ),
            ),
          ]))
        ],
      ),
    );
  }
}

class Address extends StatelessWidget {
  const Address({super.key});

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
                  Icons.person,
                  size: 35,
                ),
                trailing: Icon(
                  Icons.delete_forever,
                  size: 22,
                ),
                isThreeLine: true,
                title: Text(
                  'salman',
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.black87,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text(
                  'pattupara house,ottathara,kodur po,malappuram 676504',
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.black54,
                  ),
                ),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
