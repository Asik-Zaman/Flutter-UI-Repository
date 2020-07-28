import 'package:flutter/material.dart';
import 'package:animator/animator.dart';

void main() => runApp(MaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    ));

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/background.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            child: Container(
              decoration: BoxDecoration(
                gradient:
                    LinearGradient(begin: Alignment.bottomCenter, colors: [
                  Colors.black.withOpacity(0.9),
                  Colors.black.withOpacity(0.3),
                ]),
              ),
              child: Padding(
                padding: EdgeInsets.all(20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Container(
                      height: 250.0,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          makeItem(
                              image: 'assets/images/place.jpg', text: '2.1m'),
                          makeItem(
                              image: 'assets/images/place3.jpg', text: '1.1m'),
                          makeItem(
                              image: 'assets/images/place2.jpg', text: '4.1m'),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          makePoint(top: 140.0, left: 40.0),
          makePoint(top: 190.0, left: 300.0),
          makePoint(top: 250.0, left: 150.0),
        ],
      ),
    );
  }

  Widget makePoint({top, left}) {
    return Positioned(
      top: top,
      left: left,
      child: Container(
          width: 20,
          height: 20,
          decoration: BoxDecoration(
              shape: BoxShape.circle, color: Colors.blue.withOpacity(0.3)),
          child: Animator<double>(
            duration: Duration(seconds: 1),
            tween: Tween<double>(begin: 4.0, end: 6.0),
            cycles: 0,
             builder: (context, animatorState, child )=> Center(
              child: Container(
                margin: EdgeInsets.all(animatorState.value),
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: Colors.blue),
              ),
            ),
          )),
    );
  }

  Widget makeItem({image, text}) {
    return AspectRatio(
      aspectRatio: 1.5 / 2,
      child: Container(
        margin: EdgeInsets.only(right: 20.0),
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          color: Colors.white,
        ),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  height: 60.0,
                  width: 60.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      image: DecorationImage(
                          image: AssetImage(image), fit: BoxFit.cover)),
                ),
                Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 15.0, vertical: 8.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50.0),
                        color: Colors.grey[200]),
                    child: Text(
                      text,
                      style: TextStyle(color: Colors.grey[500]),
                    ))
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              'Golde Gate Bridge',
              style: TextStyle(
                  color: Colors.grey[800],
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Icon(
                Icons.star_border,
                color: Colors.yellow[700],
                size: 30,
              ),
            )
          ],
        ),
      ),
    );
  }
}
