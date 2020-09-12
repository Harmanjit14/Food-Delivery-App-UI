import 'package:flutter/material.dart';
import 'package:food_app_ui/screen2/allrest.dart';

class Navbar extends StatefulWidget {
  @override
  _NavbarState createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  Color disabCol = Colors.amber[600];
  Color enabCol = Colors.black;
  Color useCol = Colors.amber[600];
  double useSize0 = 35;
  double useSize1 = 25;
  double useSize2 = 25;
  double useSize3 = 25;
  double expanSize = 35;
  double diabSize = 25;

  void navbarController(int index) {
    switch (index) {
      case 0:
        {
          useSize0 = expanSize;
          useSize1 = diabSize;
          useSize2 = diabSize;
          useSize3 = diabSize;
        }
        break;
      case 1:
        {
          useSize1 = expanSize;
          useSize0 = diabSize;
          useSize2 = diabSize;
          useSize3 = diabSize;
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (BuildContext context) => AllRestaurants(),
              ),
            );
        }
        break;
      case 2:
        {
          useSize2 = expanSize;
          useSize1 = diabSize;
          useSize0 = diabSize;
          useSize3 = diabSize;
        }
        break;
      case 3:
        {
          useSize3 = expanSize;
          useSize1 = diabSize;
          useSize2 = diabSize;
          useSize0 = diabSize;
        }
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          color: useCol,
          margin: EdgeInsets.symmetric(horizontal: 20),
          child: IconButton(
              color: Colors.black,
              icon: Icon(
                Icons.home,
                color: Colors.black,
                size: useSize0,
              ),
              padding: EdgeInsets.all(0),
              onPressed: () {
                setState(() {
                  navbarController(0);
                });
              }),
        ),
        Container(
          color: useCol,
          margin: EdgeInsets.symmetric(horizontal: 20),
          child: IconButton(
              color: Colors.black,
              icon: Icon(
                Icons.restaurant,
                color: Colors.black,
                size: useSize1,
              ),
              padding: EdgeInsets.all(0),
              onPressed: () {
                setState(() {
                  navbarController(1);
                });
              }),
        ),
        Container(
          color: useCol,
          margin: EdgeInsets.symmetric(horizontal: 20),
          child: IconButton(
              color: Colors.black,
              icon: Icon(
                Icons.fastfood,
                color: Colors.black,
                size: useSize2,
              ),
              padding: EdgeInsets.all(0),
              onPressed: () {
                setState(() {
                  navbarController(2);
                });
              }),
        ),
        Container(
          color: useCol,
          margin: EdgeInsets.symmetric(horizontal: 20),
          child: IconButton(
              color: Colors.black,
              icon: Icon(
                Icons.account_balance_wallet,
                color: Colors.black,
                size: useSize3,
              ),
              padding: EdgeInsets.all(0),
              onPressed: () {
                setState(() {
                  navbarController(3);
                });
              }),
        ),
      ],
    );
  }
}
