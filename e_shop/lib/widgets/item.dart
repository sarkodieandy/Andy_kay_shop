import 'package:flutter/material.dart';
//import 'package:firebase_storage/firebase_storage.dart';
//import 'package:cloud_firestore/cloud_firestore.dart';

class Category extends StatelessWidget {
  const Category({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 6,
        child: NestedScrollView(
          headerSliverBuilder: (context, value) {
            return [
              SliverAppBar(
                expandedHeight: 100.0,
                floating: false,
                pinned: true,
                backgroundColor: Colors.greenAccent,
                centerTitle: true,
                bottom: PreferredSize(
                    preferredSize: Size.fromHeight(0),
                    child: TabBar(
                        isScrollable: true,
                        unselectedLabelColor: Colors.black45,
                        indicatorColor: Colors.black,
                        labelColor: Colors.black,
                        tabs: [
                          Tab(
                            child: Text(
                              "item1",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w500),
                            ),
                          ),
                          Tab(
                            child: Text(
                              "item2",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w500),
                            ),
                          ),
                          Tab(
                            child: Text(
                              "item3",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w500),
                            ),
                          ),
                          Tab(
                            child: Text(
                              "item4",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w500),
                            ),
                          ),
                          Tab(
                            child: Text(
                              "item5",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w500),
                            ),
                          ),
                          Tab(
                            child: Text(
                              "item6",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w500),
                            ),
                          )
                        ])),
              ),
            ];
          },
          body: TabBarView(
            children: <Widget>[
              GridView.count(
                  crossAxisSpacing: 10.0,
                  mainAxisSpacing: 10,
                  crossAxisCount: 2,
                  scrollDirection: Axis.vertical,
                  children: <Widget>[
                    Tab1item(),
                    Tab1item(),
                    Tab1item(),
                    Tab1item(),
                  ]),
              Container(
                child: Center(
                  child: Text('Tab 2'),
                ),
              ),
              Container(
                child: Center(
                  child: Text('Tab 3'),
                ),
              ),
              Container(
                child: Center(
                  child: Text('Tab 4'),
                ),
              ),
              Container(
                child: Center(
                  child: Text('Tab 5'),
                ),
              ),
              Container(
                child: Center(
                  child: Text('Tab 6'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Griditem extends StatelessWidget {
  const Griditem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
        //crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            color: Colors.white,
            child: GridView.count(
              //shrinkWrap: false,
              scrollDirection: Axis.vertical,
              crossAxisCount: 2,
              children: <Widget>[
                Container(
                  color: Colors.yellowAccent,
                  margin: EdgeInsets.all(10),
                  child: Center(
                    child: Text("one"),
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
                  color: Colors.blueAccent,
                  margin: EdgeInsets.all(10),
                  child: Center(
                    child: Text("one",
                        style: TextStyle(fontSize: 18, color: Colors.black)),
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
                  color: Colors.blueAccent,
                  margin: EdgeInsets.all(10),
                  child: Center(
                    child: Text("one",
                        style: TextStyle(fontSize: 18, color: Colors.black)),
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
                  color: Colors.blueAccent,
                  margin: EdgeInsets.all(10),
                  child: Center(
                    child: Text("one",
                        style: TextStyle(fontSize: 18, color: Colors.black)),
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
              ],
            ),
          )
        ]);
  }
}

class Tab1item extends StatelessWidget {
  const Tab1item({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5.0),
        image: DecorationImage(
          image: AssetImage('assets/images/bg_1.jpg'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
