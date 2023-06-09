import 'package:flutter/material.dart';
import 'package:posttest7_125_lidya/Cart.dart';
import 'MainPage.dart';
import 'Cart.dart';
import 'Home.dart';
import 'Profile.dart';

class Favorite extends StatelessWidget {
  const Favorite({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
                decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                    Color(0xffEEA4CE).withOpacity(0.2),
                    Color(0xffC58BF2).withOpacity(0.2),
                  ]),
                ),
                child: Column(
                  children: [
                    Container(
                        margin: EdgeInsets.only(bottom: 10),
                        child: Image.asset(
                          "assets/logo.png",
                          fit: BoxFit.contain,
                          height: 80,
                        )),
                    Image.asset("assets/logop.png"),
                  ],
                )),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (_) {
                    return MainPage();
                  },
                ));
              },
            ),
            ListTile(
              leading: Icon(Icons.shopping_bag),
              title: Text("Cart"),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (_) {
                    return Cart();
                  },
                ));
              },
            ),
            ListTile(
              leading: Icon(Icons.favorite),
              title: Text("Favorite"),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (_) {
                    return Favorite();
                  },
                ));
              },
            ),
          ],
        ),
      ),
    );
  }
}
