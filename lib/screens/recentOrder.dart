import 'package:flutter/material.dart';
import 'package:food_app_ui/data/data.dart';
import 'package:food_app_ui/models/order.dart';

Widget recentOrder(BuildContext context, Order order) {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(40),
      color: Colors.amber[600],
    ),
    margin: EdgeInsets.all(5),
    width: 350,
    child: Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(40),
          child: Image.asset(
            order.food.imageUrl,
            height: MediaQuery.of(context).size.height * 0.17,
            width: 130,
            fit: BoxFit.cover,
          ),
        ),
        Container(
          margin: EdgeInsets.fromLTRB(15, 15, 15, 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                order.food.name,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
              ),
              Text(
                order.restaurant.name,
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              Text(order.date,
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
            ],
          ),
        ),
        FloatingActionButton(
          backgroundColor: Colors.black,
          onPressed: null,
          elevation: 0,
          child: Icon(
            Icons.add,
            size: 35,
          ),
        )
      ],
    ),
  );
}
