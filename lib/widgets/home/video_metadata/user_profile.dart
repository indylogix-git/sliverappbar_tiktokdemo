import 'package:flutter/material.dart';

Widget userProfile() {
  return Padding(
    padding: EdgeInsets.only(top: 5, bottom: 5),
    child: Column(
      children: <Widget>[
        Stack(
          alignment: AlignmentDirectional.center,
          children: <Widget>[
            Container(
              height: 45,
              width: 45,
              decoration: BoxDecoration(
                  border: Border.all(
                      color: Colors.white,
                      width: 1.0,
                      style: BorderStyle.solid),
                  color: Colors.black,
                  image:
                  DecorationImage(image: AssetImage("assets/images/avatar.png")),
                  shape: BoxShape.circle),
            ),
            Container(
              margin: EdgeInsets.only(top: 45),
              height: 18,
              width: 18,
              child: Icon(Icons.add, size: 10, color: Colors.white),
              decoration: BoxDecoration(
                  color: Color.fromRGBO(255, 42, 84, 1),
                  shape: BoxShape.circle),
            )
          ],
        )
      ],
    ),
  );
}
