import 'package:e_shop/widgets/appBar.dart';
import 'package:flutter/material.dart';
import 'package:e_shop/widgets/cartPage.dart';
import 'package:e_shop/widgets/profile_widget.dart';
import 'package:e_shop/widgets/item.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<StatefulWidget> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;
  bool isSearching = false;
  final TextEditingController _searchController = TextEditingController();

  final List<Widget> _pages = [
    Homepage(), // Ensure this widget is defined and imported
    Category(), // Ensure this widget is defined and imported
    Cartpage(), // Ensure this widget is defined and imported
    ProfilePage(), // Ensure this widget is defined and imported
  ];

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        title: isSearching
            ? TextField(
                controller: _searchController,
                decoration: InputDecoration(
                  icon: Icon(Icons.search, color: Colors.black),
                  hintText: "Search here",
                  border: InputBorder.none,
                ),
                style: TextStyle(color: Colors.black),
                onSubmitted: (query) {
                  // Add search functionality here
                  print("Searching for: $query");
                },
              )
            : Text(
                "oxUY",
                style: TextStyle(color: Colors.black, fontSize: 28),
              ),
        backgroundColor: Colors.white,
        actions: [
          IconButton(
            icon: Icon(
              isSearching ? Icons.cancel : Icons.search,
              color: Colors.black,
            ),
            onPressed: () {
              setState(() {
                if (isSearching) _searchController.clear();
                isSearching = !isSearching;
              });
            },
          ),
        ],
      ),
      body: SafeArea(child: _pages[_currentIndex]),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(30),
            topLeft: Radius.circular(30),
          ),
          boxShadow: [
            BoxShadow(color: Colors.black38, spreadRadius: 0, blurRadius: 10),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.white,
            unselectedItemColor: Colors.green,
            selectedItemColor: Colors.blueGrey,
            currentIndex: _currentIndex,
            onTap: (index) => setState(() => _currentIndex = index),
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: "Home",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.category),
                label: "Category",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart),
                label: "Cart",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: "Profile",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
