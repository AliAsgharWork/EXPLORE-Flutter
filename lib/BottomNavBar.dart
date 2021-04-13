import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 30.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Icon(Icons.flag),
          Icon(Icons.flash_on_outlined),
          Container(
              height: 75,
              width: 50,
              decoration: BoxDecoration(
                  color: Colors.purple,
                  borderRadius: BorderRadius.circular(25.0)),
              child: Icon(
                Icons.add,
                color: Colors.white,
              )),
          Icon(Icons.calendar_today_rounded),
          Icon(Icons.person),
        ],
      ),
    );
  }
}
