import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: _HomePage(),
  ));
}

class _HomePage extends StatefulWidget {
  @override
  __HomePageState createState() => __HomePageState();
}

class __HomePageState extends State<_HomePage> {
  var selectedFood ='BURGER';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView(

        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
          height: 400.0,
      ),
              ShaderMask(
                shaderCallback: (rect){
                  return LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Colors.black,Colors.transparent]
                  ).createShader(Rect.fromLTRB(0, 0, rect.width, rect.height));
                },
                blendMode: BlendMode.dstIn,
                child: Image.asset(
                  'assets/images/japan.jpg',
                  height: 300.0,
                  fit: BoxFit.cover,
                ),
              ),
              RotatedBox(
                quarterTurns: 3,
                child: Text("JAPAN",style: TextStyle(fontSize: 75,fontWeight: FontWeight.bold,color: Colors.white.withOpacity(0.3),letterSpacing: 10.0),),
              ),
              Positioned(
                top: 4.0,
                right: 4.0,
                child: Container(
                  width: 40.0,
                  height: 40.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Colors.white,
                  ),
                  child: Center(
                    child: Icon(Icons.menu),
                  ),
                ),
              ),
              Positioned(
                top: 2.0,
                right: 5.0,
                child: Container(
                  width: 12.0,
                  height: 12.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6.0),
                    color: Colors.pink,
                  ),
                ),
              ),
              Positioned(
                top: 192.0,
                left: 40.0,
                child: Text("WELCOME TO",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18.0,color: Colors.white70),),
              ),
              Positioned(
                top: 215.0,
                left: 40.0,
                child: Row(
                  children: <Widget>[
                    Text("TOKYO",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 43.0,color: Colors.pink),),
                    SizedBox(width: 2.0,),
                    Text(", JAPAN",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 43.0,color: Colors.white),),
                  ],
                )
              ),
              Positioned(
                top: 320.0,
                left: 25.0,
                right: 25.0,
                child: Container(
                  height: 47.0,
                  decoration: BoxDecoration(
                    color: Colors.blueGrey,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(15.0),
                      bottomRight: Radius.circular(15.0),
                      topLeft: Radius.circular(15.0),
                      topRight: Radius.circular(15.0),
                    ),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Lets explore some food here baby...",
                      hintStyle: TextStyle(
                        fontSize: 12.0,
                        color: Colors.grey,
                      ),
                      contentPadding: EdgeInsets.only(top: 15.0),
                      prefixIcon: Icon(Icons.search),
                    ),
                  ),
                ),
              ),


            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              _buildMenuItem('BURGER' ,Icons.fastfood),
              _buildMenuItem('TEA' ,Icons.local_drink),
              _buildMenuItem('DINING' ,Icons.local_dining),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              _buildMenuItem('CAKE' ,Icons.cake),
              _buildMenuItem('BEER' ,Icons.local_bar),
              _buildMenuItem('PEOPLE' ,Icons.people),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              _buildMenuItem('PRINT' ,Icons.print),
              _buildMenuItem('USER' ,Icons.verified_user),
              _buildMenuItem('HOTEL' ,Icons.local_hotel),
            ],
          ),
        ],
      ),
    );
  }
  Widget _buildMenuItem(String foodName, IconData) {
    return InkWell(splashColor: Colors.transparent,
      onTap: () {
        selectMenuOptions(foodName);
      },
      child: AnimatedContainer(curve: Curves.easeIn,
        duration: Duration(milliseconds: 300),
        height: selectedFood == foodName ? 100.0 : 75.0,
        width: selectedFood == foodName ? 100.0 : 75.0,
        color: selectedFood == foodName ? Color(0xFFFD3566) : Colors
            .transparent,
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(IconData,
              color: selectedFood == 'foodname' ? Colors.white : Colors.grey,
              size: 25.0,),
            SizedBox(height: 12.0),
            Text(foodName, style: TextStyle(
              color: selectedFood == 'foodname' ? Colors.white : Colors.grey,
              fontSize: 10.0,),),
          ],
        )));
  }

  void selectMenuOptions(String foodName) {
    setState(() {
      selectedFood = foodName;
    });
  }


}
