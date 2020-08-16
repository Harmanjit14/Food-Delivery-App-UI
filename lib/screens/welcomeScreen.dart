import 'package:flutter/material.dart';

class Screen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Zomato',
          style: TextStyle(fontSize: 25),
        ),
        centerTitle: true,
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Icon(
                Icons.shopping_basket,
                size: 30,
              ),
            ),
          ),
        ],
        leading: IconButton(
            icon: Icon(
              Icons.account_circle,
              size: 30,
              color: Colors.white,
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
  String search_content;
  @override
  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData;
    queryData = MediaQuery.of(context);
    return Container(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'SEARCH HERE',
                  fillColor: Colors.amber,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide(
                      width: 1,
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
