import 'package:flutter/material.dart';
import 'package:food_app_ui/data/data.dart';
import 'package:food_app_ui/models/restaurant.dart';

Widget nearbyRes(BuildContext context) {
  List<Widget> restList = [];
  restaurants.forEach((Restaurant restaurant) {
    restList.add(
      Container(
        height: MediaQuery.of(context).size.height * 0.2,
        margin: EdgeInsets.fromLTRB(20, 15, 20, 0),
        decoration: BoxDecoration(
          color: Colors.grey[350],
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image(
                image: AssetImage(
                  restaurant.imageUrl,
                ),
                width: 150,
                height: 150,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
              child: Column(
                children: [
                  Text(
                    restaurant.name,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    restaurant.address,
                    style: TextStyle(fontSize: 15),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  });
  return Column(
    children: restList,
  );
}
