import 'package:flutter/material.dart';
import 'package:food_web/Components/default_button.dart';

import 'menu_item.dart';

class CustomAppBar extends StatefulWidget {
  @override
  _CustomAppBarState createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  late double height = MediaQuery.of(context).size.height;

  late double width = MediaQuery.of(context).size.width;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(46),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -2),
            blurRadius: 30,
            color: Colors.black.withOpacity(0.16),
          ),
        ],
      ),
      child: Row(
        children: <Widget>[
          Image.asset(
            "assets/images/logo.png",
            height: 25,
            alignment: Alignment.topCenter,
          ),
          SizedBox(width: 5),
          Text(
            "Charles",
            style: TextStyle(
              fontFamily: "Agustina",
              fontSize: 20,
              color: Colors.black,
            ),
          ),
          Spacer(),
          MenuItem(
            title: "Home",
            press: () {},
          ),
          MenuItem(
            title: "about",
            press: () {},
          ),
          MenuItem(
            title: "Projects",
            press: () {},
          ),
          MenuItem(
            title: "Contact",
            press: () {},
          ),

          DefaultButton(
            text: "Resume",
            press: () {},
          ),
        ],
      ),
    );
  }
}
