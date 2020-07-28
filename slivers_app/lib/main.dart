import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: HomePage(),
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
      body: new CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            leading: Icon(Icons.arrow_back),
            expandedHeight: 250.0,
            title: new Text("Sliver app"),
            floating: true,
            pinned: true,
            flexibleSpace: new FlexibleSpaceBar(
              background: Image.network('https://placeimg.com/480/320/any'),
              
            ),

          ),
          new SliverList(
              delegate:new SliverChildBuilderDelegate((context,index)=>
                  new Card(
                  child: new Container(
                    padding: EdgeInsets.all(10.0),
                    child: new Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        CircleAvatar(
                          backgroundColor: Colors.transparent,
                          backgroundImage: new NetworkImage('https://i.pravatar.cc/300'),
                        ),
                        SizedBox(width :10.0),
                        Text("I am the card content"),

                      ],
                    ),
                  ),
              ))
          )
        ],
      ),
    );
  }
}
