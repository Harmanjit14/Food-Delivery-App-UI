import 'package:flutter/material.dart';
import 'package:food_app_ui/data/data.dart';
import 'package:food_app_ui/models/order.dart';
import 'package:food_app_ui/screen1/nearbyRes.dart';
import 'package:food_app_ui/screen1/recentOrder.dart';

class Screen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber[600],
        title: Text(
          'Zomato',
          style: TextStyle(fontSize: 25, color: Colors.black),
        ),
        centerTitle: true,
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Icon(
                Icons.shopping_basket,
                size: 30,
                color: Colors.black,
              ),
            ),
          ),
        ],
        leading: IconButton(
            icon: Icon(
              Icons.account_circle,
              size: 30,
              color: Colors.black,
            ),
            onPressed: null),
      ),
      body: Body1(),
    );
  }
}

class Body1 extends StatefulWidget {
  @override
  _Body1State createState() => _Body1State();
}

class _Body1State extends State<Body1> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextField(
              decoration: InputDecoration(
                suffixIcon: Icon(
                  Icons.arrow_left,
                  size: 30,
                ),
                hintText: 'Search for Food or Restaurants',
                prefixIcon: Icon(
                  Icons.arrow_right,
                  size: 30,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide(width: 1, color: Colors.black),
                ),
              ),
            ),
          ),
        ),
        Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
                child: Text(
                  'Recent Orders',
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 25,
                      letterSpacing: 1.2),
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.17,
                margin: EdgeInsets.fromLTRB(20, 5, 20, 0),
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: currentUser.orders.length,
                    itemBuilder: (BuildContext context, int index) {
                      Order order = currentUser.orders[index];
                      return recentOrder(context, order);
                    }),
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.fromLTRB(0, 10, 0, 5),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
                child: Text(
                  'Nearby Restaurants',
                  style: TextStyle(
                      fontWeight: FontWeight.w800,
                      fontSize: 20,
                      letterSpacing: 1.2),
                ),
              ),
              Container(child: nearbyRes(context)),
            ],
          ),
        ),
      ],
    );
  }
}
