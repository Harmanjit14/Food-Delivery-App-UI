import 'package:flutter/material.dart';
import 'package:food_app_ui/data/data.dart';
import 'package:food_app_ui/models/restaurant.dart';

Widget rating(BuildContext context, int rat) {
  List<Widget> stars = [];
  for (int i = 1; i <= rat; i++) {
    stars.add(Icon(Icons.star));
  }
  return Row(
    children: stars,
  );
}

class AllRestaurants extends StatefulWidget {
  @override
  _AllRestaurantsState createState() => _AllRestaurantsState();
}

class _AllRestaurantsState extends State<AllRestaurants> {
  @override
  Widget build(BuildContext context) {
    List<Widget> restList = [];
    restaurants.forEach((Restaurant restaurant) {
      restList.add(
        Container(
          height: MediaQuery.of(context).size.height * 0.15,
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      restaurant.name,
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      restaurant.address,
                      style: TextStyle(fontSize: 15),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    rating(context, restaurant.rating),
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
}
