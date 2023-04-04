import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FAB extends StatelessWidget {
  const FAB({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration:BoxDecoration(
          borderRadius: BorderRadius.circular(12.0),
          color: Colors.cyanAccent,
        ),
        height: 70.0,
          width: 100.0,

        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: const [
            Icon(Icons.shopping_cart),
            Text('Buy now',style: TextStyle(
              fontSize: 15.0
            ),)
          ],
        ),
      ),
    );
  }
}
