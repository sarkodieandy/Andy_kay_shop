import 'package:flutter/material.dart';
import 'package:e_shop/pages/addressPage.dart';
import 'package:e_shop/pages/orderPage.dart';
import 'package:e_shop/pages/accountPage.dart';
import 'package:e_shop/pages/welcomePage.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

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
            automaticallyImplyLeading: false,
            backgroundColor: Colors.greenAccent,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                "Profile",
                style: TextStyle(color: Colors.black87, fontSize: 24),
              ),
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(30),
                bottomLeft: Radius.circular(30),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Column(
                      children: <Widget>[
                        ProfileOption(
                          icon: Icons.person_pin_circle,
                          title: "My Account",
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Accountpage(),
                              ),
                            );
                          },
                        ),
                        ProfileOption(
                          icon: Icons.card_travel,
                          title: "My Orders",
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Orderpage(),
                              ),
                            );
                          },
                        ),
                        ProfileOption(
                          icon: Icons.location_on,
                          title: "Manage Address",
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Addresspage(),
                              ),
                            );
                          },
                        ),
                        SizedBox(height: 30),
                        ProfileOption(
                          icon: Icons.logout,
                          title: "Log Out",
                          isCentered: true,
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => WelcomePage(),
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ProfileOption extends StatelessWidget {
  final IconData icon;
  final String title;
  final VoidCallback onPressed;
  final bool isCentered;

  const ProfileOption({
    super.key,
    required this.icon,
    required this.title,
    required this.onPressed,
    this.isCentered = false,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15.0),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.black87, backgroundColor: Colors.white, elevation: 6,
          padding: const EdgeInsets.all(10),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
        onPressed: onPressed,
        child: Row(
          mainAxisAlignment:
              isCentered ? MainAxisAlignment.center : MainAxisAlignment.start,
          children: <Widget>[
            if (!isCentered) Icon(icon, color: Colors.black87),
            if (!isCentered) SizedBox(width: 10),
            Text(
              title,
              style: TextStyle(fontSize: 18.0, color: Colors.black87),
            ),
          ],
        ),
      ),
    );
  }
}
