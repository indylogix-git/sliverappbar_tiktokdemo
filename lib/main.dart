import 'package:flutter/material.dart';
import 'package:flutter_video_playerdemo/pages/home_page.dart';
import 'package:flutter_video_playerdemo/widgets/home/home_header.dart';

import 'bottom_nav_bar.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Stack(
          children: <Widget>[
            HomeScreen(),
            BottomNavigation(),
            homeHeader(),
          ],
        ),
      ),
    );
  }
}
