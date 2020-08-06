import 'package:flutter/material.dart';

//void main() {
//  runApp(MyApp());
//}

class SliverAppBarDelegate extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Counter Demo',
      theme: ThemeData.light(),
      home: Scaffold(
//        appBar: AppBar(
//          backgroundColor: Colors.black87,
//          centerTitle: true,
//          title: Text("Demo App"),
//        ),
        body: Body(),
      ),
    );
  }
}

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  final List<String> images = [
    "1.jpg",
    "2.jpg",
    "3.jpg",
    "4.jpg",
    "1.jpg",
    "2.jpg",
    "3.jpg",
    "4.jpg",
    "1.jpg",
    "2.jpg",
  ];

  int _index = 0;
  String _image = "assets/images/1.jpg";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: IndexedStack(
        index: _index,
        children: [
          GridView.builder(
            itemCount: images.length,
            gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                onLongPress: () {
                  setState(() {
                    _index = 1;
                    _image = "assets/images/${images[index]}";
                  });
                },
                onLongPressEnd: (details) {
                  setState(() {
                    _index = 0;
                  });
                },
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Card(
                    elevation: 4,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    clipBehavior: Clip.hardEdge,
                    child: Image.asset("assets/images/${images[index]}"),
                  ),
                ),
              );
            },
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.black45.withOpacity(0.2),
            ),
            child: Center(
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  maxHeight: 400,
                  maxWidth: 400,
                ),
                child: Image.asset(
                  _image,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}