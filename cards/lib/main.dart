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
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
            icon: Icon(Icons.arrow_back_ios),
            color: Colors.black,
            onPressed: (){}
            ),
        title: new Text("Near by",
        style: TextStyle(fontWeight: FontWeight.bold,
            fontSize: 20.0,
            color: Colors.black,
            fontFamily: 'Montserrat',
        ),
        ),
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 8.0),
            child: FlutterLogo(
              colors: Colors.blue,
              size: 32.0,
            )
          )
        ],
      ),

      body: Stack(
        children: <Widget>[
          Positioned(
            top: 97.0,
            left: 80.0,
            child: Container(
              width: 210.0,
              height: 300.0,
              decoration: BoxDecoration(
                color: Colors.orangeAccent,
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
          ),
          Positioned(
            top: 110.0,
            left: 65.0,
            child: Container(
            width: 240.0,
            height: 320.0,
            decoration: BoxDecoration(
              color: Colors.blueAccent,
              borderRadius: BorderRadius.circular(10.0),
            ),
          ),
          ),
          Positioned(
            top: 125.0,
            left: 55.0,
            child: Stack(
              children: <Widget>[
                Container(
                  width: 260.0,
                  height: 340.0,
                  decoration: BoxDecoration(
                    color: Colors.greenAccent,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: new Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(11.0),
                      image: DecorationImage(
                          image: AssetImage("assets/image/disha.jpg"),
                          fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ],
          ),
          ),
          Positioned(
            top:420.0,
            left: 68.0,
            child: Container(
              padding: EdgeInsets.all(7.0),
              width: 235.0,
              height: 85.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    blurRadius: 20.0,
                    color: Colors.black12,
                    spreadRadius: 12.0,
                  ),
                ]
              ),
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Text("Disha",style: TextStyle(fontSize: 20.0,color: Colors.black,fontFamily: 'Montserrat',fontWeight: FontWeight.bold)),
                      SizedBox(
                        width: 0.0,
                      ),
                      Image.asset('assets/image/female.jpg',
                      width: 40.0,
                        height: 40.0,
                      ),
                      SizedBox(
                        width: 70.0,
                      ),
                      Text("5km",style: TextStyle(fontFamily: 'Montserrat',fontSize: 20.0,color: Colors.grey),),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Text("She is wonderful",style: TextStyle(fontSize: 17.0,fontFamily: 'Montserrat',color: Colors.grey)),
                    ],
                  )
                ],
              ),

            ),
          ),
          Positioned(
            top: 520.0,
            left: 20.0,
            child: Container(
              width: 320.0,
              height: 70.0,
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  FloatingActionButton(
                    elevation: 10.0,
                    onPressed: (){},
                    child: Icon(Icons.close,color: Colors.black),
                    backgroundColor: Colors.white,
                  ),
               FloatingActionButton(
                 elevation: 10.0,
                 onPressed: (){},
                 child: Icon(Icons.message,color: Colors.lightBlue,),
                 backgroundColor: Colors.white,
               ),
                  FloatingActionButton(
                    elevation: 10.0,
                    onPressed: (){},
                    child: Icon(Icons.favorite,color: Colors.pink),
                    backgroundColor: Colors.white,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
