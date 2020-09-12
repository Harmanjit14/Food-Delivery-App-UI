import 'package:flutter/material.dart';

class CartView extends StatefulWidget {
  int i = 0;
  CartView();
  CartView.add() {
    i++;
  }
  @override
  _CartViewState createState() => _CartViewState();
}

class _CartViewState extends State<CartView> {
  int j;
  @override
  void setState(fn) {
    // TODO: implement setState
    j = widget.i;
    super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: Text(
          'Cart [$j]',
          style: TextStyle(
              color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
