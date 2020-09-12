import 'package:flutter/material.dart';
import 'package:food_app_ui/models/restaurant.dart';

class RestView extends StatefulWidget {
  final Restaurant restaurant;
  RestView(this.restaurant);
  @override
  _RestViewState createState() => _RestViewState();
}

class _RestViewState extends State<RestView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            child: Image(image: AssetImage(widget.restaurant.imageUrl)),
          ),
        ],
      ),
    );
  }
}
