import 'package:flutter/material.dart';
import 'FadeAnimation.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(fontFamily: 'Nunito'),
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  PageController _pageController;
  int totalPage = 4;

  @override
  void initState() {
    _pageController = PageController(
      initialPage: 0,
    );
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: <Widget>[
          makePage(
            page: 1,
            image: 'assets/images/one.jpg',
            title: 'Yosemite National Park',
            decription:
                'Yosemite National Park is in California’s Sierra Nevada mountains. It’s famed for its giant, ancient sequoia trees, and for Tunnel View.',
          ),
          makePage(
            page: 2,
            image: 'assets/images/two.jpg',
            title: 'Golden Gate Bridge',
            decription:
                'The Golden Gate Bridge is a suspension bridge spanning the Golden Gate, the one-mile-wide strait connecting San Francisco Bay and the Pacific Ocean.',
          ),
          makePage(
            page: 3,
            image: 'assets/images/three.jpg',
            title: 'Sedona',
            decription:
                'Sedona is regularly described as one of Americas most beautiful places. Nowhere else will you find a landscape as dramatically colorful.',
          ),
          makePage(
            page: 4,
            image: 'assets/images/four.jpg',
            title: 'Savannah',
            decription:
                'Savannah, with its Spanish moss, Southern accents and creepy graveyards, is a lot like Charleston, South Carolina. But this city about 100 miles to the south has an eccentric streak.',
          ),
        ],
      ),
    );
  }

  Widget makePage({image, title, decription, page}) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.cover,
        ),
      ),
      child: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(begin: Alignment.bottomRight, stops: [
          0.3,
          0.8
        ], colors: [
          Colors.black.withOpacity(0.6),
          Colors.black.withOpacity(0.1),
        ])),
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.baseline,
                textBaseline: TextBaseline.alphabetic,
                children: <Widget>[
                  Text(
                    page.toString(),
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '/' + totalPage.toString(),
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  )
                ],
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    AnimationPage(
                      1,
                      Text(
                        title,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 50,
                            height: 1.2,
                            fontFamily: 'Nunito',
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    AnimationPage(
                      1.5,
                      Row(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(right: 3),
                            child: Icon(
                              Icons.star,
                              color: Colors.yellow,
                              size: 15,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 3),
                            child: Icon(
                              Icons.star,
                              color: Colors.yellow,
                              size: 15,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 3),
                            child: Icon(
                              Icons.star,
                              color: Colors.yellow,
                              size: 15,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 3),
                            child: Icon(
                              Icons.star,
                              color: Colors.yellow,
                              size: 15,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 5),
                            child: Icon(
                              Icons.star,
                              color: Colors.grey,
                              size: 15,
                            ),
                          ),
                          Text(
                            '4.0',
                            style: TextStyle(color: Colors.white70),
                          ),
                          Text(
                            '(2300)',
                            style:
                                TextStyle(color: Colors.white38, fontSize: 12),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    AnimationPage(
                      2,
                      Padding(
                        padding: const EdgeInsets.only(right: 50),
                        child: Text(
                          decription,
                          style: TextStyle(
                              color: Colors.white.withOpacity(.7),
                              height: 1.8,
                              fontSize: 15),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    AnimationPage(
                      2.5,
                      Text(
                        'READ MORE',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
