import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:food_app_ui/models/restaurant.dart';
import 'package:food_app_ui/screen1/welcomeScreen.dart';
import 'package:food_app_ui/screen2/singleRest.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Restaurant restaurant;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Food App',
      theme: ThemeData(
          primaryColor: Colors.black,
          scaffoldBackgroundColor: Colors.grey[300]),
      home: Screen1(),
    );
  }
}
