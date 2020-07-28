import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: HomePage(),
    debugShowCheckedModeBanner: false,
  ));
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new FlutterLogo(
          colors: Colors.green,
          size: 35.0,
        ),
        elevation: 0.0,
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.grey,
            ),
            onPressed: () {}),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.menu, color: Colors.grey, size: 25.0),
              onPressed: () {}),
        ],
      ),
      body: ListView(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                alignment: Alignment(0.0, -.40),
                height: 100.0,
                color: Colors.white,
                child: Text(
                  'Get coaching',
                  style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Montserrat',
                      color: Colors.black),
                ),
              ),
              Container(
                height: 80,
                margin: EdgeInsets.fromLTRB(25.0, 90.0, 25.0, 0.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.white,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Stack(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.fromLTRB(18.0, 10.0, 38.0, 20.0),
                          child: Text(
                            'YOU HAVE',
                            style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.bold,
                                fontSize: 18.0,
                                color: Colors.grey),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.fromLTRB(18.0, 30.0, 30.0, 5.0),
                          child: Text(
                            '206',
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.bold,
                              fontSize: 40.0,
                            ),
                          ),
                        ),
                        Positioned(
                          top: 31.0,
                          left: 95.0,
                          child: Container(
                            height: 23.0,
                            width: 23.0,
                            child: CircleAvatar(
                              child: Image.asset('assets/images/pic1.jpg',
                                  fit: BoxFit.cover),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(180.0, 20.0, 20.0, 0.0),
                          height: 40.0,
                          width: 100.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: Colors.green.withOpacity(0.2),
                          ),
                          child: Center(
                            child: Text(
                              'Buy more',
                              style: TextStyle(
                                fontSize: 12.0,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Montserrat',
                                color: Colors.green,
                              ),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 40.0,
          ),
          Container(
            padding: EdgeInsets.only(left: 15.0, right: 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'MY COACHES',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                    fontSize: 14.0,
                  ),
                ),
                Text(
                  'VIEW PAST SESSIONS',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.green,
                    fontSize: 14.0,
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          GridView.count(
            crossAxisCount: 2,
            crossAxisSpacing: 2.0,
            mainAxisSpacing: 4.0,
            shrinkWrap: true,
            primary: false,
            children: <Widget>[
              _ItemCard('TOM', '       Away for\n the next 2hours', 1),
              _ItemCard('TOM', 'Available for\nnext 5 hours', 2),
              _ItemCard('TOM', '       Away for\n the next 2hours', 3),
              _ItemCard('TOM', 'Available for\nnext 5 hours', 4),
              _ItemCard('TOM', '       Away for\n the next 2hours', 5),
              _ItemCard('TOM', 'Available for\nnext 5 hours', 6),

            ],
          )
        ],
      ),
    );
  }

  Widget _ItemCard(String name,String status,int cardIndex){
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      elevation: 7.0,
      child: Column(
        children: <Widget>[
          SizedBox(
          height: 10.0
      ),
          Container(
            height: 50.0,
            width: 50.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50.0),
              image: DecorationImage(
                image: AssetImage('assets/images/pic2.jpg'),fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Text(
            name,
            style: TextStyle(
              fontSize: 15.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            status,
            style: TextStyle(
              fontSize: 12.0,
              fontWeight: FontWeight.bold,
              color: Colors.grey,
            ),
          ),
          SizedBox(
            height: 15.0,
          ),
          Expanded(
            child: Container(
              width: 150.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(bottomRight: Radius.circular(10.0),bottomLeft: Radius.circular(10.0)),
                color: Colors.green,
              ),
              child: Center(
                child: Text(
                  'Request',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 14.0,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      margin: cardIndex.isEven?EdgeInsets.fromLTRB(10.0, 0.0, 25.0, 10.0):EdgeInsets.fromLTRB(25.0, 0.0, 5.0, 10.0),
    );
  }











}
