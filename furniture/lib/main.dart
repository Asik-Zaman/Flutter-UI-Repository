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

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {
  TabController controller;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = new TabController(length: 4, vsync: this);
  }
  @override
  void dispose() {
    // TODO: implement dispose
    controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Column(
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Container(
                    width: double.infinity,
                    height: 250.0,
                    color: Colors.amberAccent,
                  ),
                  Positioned(
                    bottom: 50.0,
                    right: 100.0,
                    child: Container(
                      height: 400.0,
                      width: 400.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(210.0),
                        color: Colors.orangeAccent.withOpacity(0.2),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 100.0,
                    left: 170.0,
                    child: Container(
                      height: 400.0,
                      width: 400.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(210.0),
                        color: Colors.orangeAccent.withOpacity(0.2),
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(
                      height: 20.0,
                  ),
                      Row(
                        children: <Widget>[
                          SizedBox(
                            width: 15.0,
                          ),
                          Container(
                            alignment: Alignment.topLeft,
                            height: 60.0,
                            width: 60.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30.0),
                              border: Border.all(
                                color: Colors.white,
                                width: 2.0,
                                style: BorderStyle.solid,
                              ),
                              image: DecorationImage(
                                  image: AssetImage('assets/images/pic1.jpg'),fit: BoxFit.cover),
                            ),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width-130.0,
                          ),
                          Container(
                            alignment: Alignment.topRight,
                            child: IconButton(
                             icon: Icon(Icons.menu,color: Colors.white,size: 30.0,),
                              onPressed: (){},
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 45.0,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 15.0),
                        child: Text(
                          'Hello, Pino',
                          style: TextStyle(
                            fontSize: 35.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.black87.withOpacity(0.7),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 15.0),
                        child: Text(
                          'What do you want to buy?',
                          style: TextStyle(
                            fontSize: 25.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.black87.withOpacity(0.7),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 24.0,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 15.0,right: 15.0),
                        child: Material(
                          elevation: 5.0,
                          borderRadius: BorderRadius.circular(5.0),
                          child: TextFormField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              prefixIcon: Icon(Icons.search,color: Colors.yellowAccent,size: 25.0,),
                              hintText: 'Search',
                              hintStyle: TextStyle(
                                color: Colors.grey,
                                fontSize: 20.0,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 10.0,
              ),
              Stack(
                children: <Widget>[
                  SizedBox(
                    height: 10.0,
                  ),
                  Material(
                    elevation: 2.0,
                    child: Container(
                      height: 75.0,
                      color: Colors.white,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Container(
                        height: 75.0,
                        width: MediaQuery.of(context).size.width/4,
                        child: Column(
                          children: <Widget>[
                            Container(
                              height: 50.0,
                              decoration: BoxDecoration(
                                image: DecorationImage(image: AssetImage('assets/images/pic2.png'))
                              ),
                            ),
                            Text(
                              'Sofas',
                              style: TextStyle(
                                fontSize: 15.0,
                                color: Colors.grey,
                              ),
                            ),

                          ],
                        ),
                      ),
                      Container(
                        height: 75.0,
                        width: MediaQuery.of(context).size.width/4,
                        child: Column(
                          children: <Widget>[
                            Container(
                              height: 50.0,
                              decoration: BoxDecoration(
                                  image: DecorationImage(image: AssetImage('assets/images/pic3.png'))
                              ),
                            ),
                            Text(
                              'Wardrobe',
                              style: TextStyle(
                                fontSize: 15.0,
                                color: Colors.grey,
                              ),
                            ),

                          ],
                        ),
                      ),
                      Container(
                        height: 75.0,
                        width: MediaQuery.of(context).size.width/4,
                        child: Column(
                          children: <Widget>[
                            Container(
                              height: 50.0,
                              decoration: BoxDecoration(
                                  image: DecorationImage(image: AssetImage('assets/images/pic4.png'))
                              ),
                            ),
                            Text(
                              'Desk',
                              style: TextStyle(
                                fontSize: 15.0,
                                color: Colors.grey,
                              ),
                            ),

                          ],
                        ),
                      ),
                      Container(
                        height: 75.0,
                        width: MediaQuery.of(context).size.width/4,
                        child: Column(
                          children: <Widget>[
                            Container(
                              height: 50.0,
                              decoration: BoxDecoration(
                                  image: DecorationImage(image: AssetImage('assets/images/pic5.png'))
                              ),
                            ),
                            Text(
                              'Dresser',
                              style: TextStyle(
                                fontSize: 15.0,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
              itemCard('FinnNavian', 'assets/images/ottoman.jpg', false),
              itemCard('FinnNavian', 'assets/images/pic7.jpg', true),
              itemCard('FinnNavian', 'assets/images/pic11.jpg', true),
              itemCard('FinnNavian', 'assets/images/pic12.jpg', true),

            ],
          ),
        ],
      ),
      bottomNavigationBar: Material(
        color: Colors.white,
        child: TabBar(
          controller: controller,
          indicatorColor: Colors.yellow,
          tabs: <Widget>[
            Tab(icon: Icon(Icons.event_seat,color: Colors.yellow)),
            Tab(icon: Icon(Icons.timer,color: Colors.grey)),
            Tab(icon: Icon(Icons.person_outline,color: Colors.green)),
            Tab(icon: Icon(Icons.shopping_cart,color: Colors.amber)),
          ],
        ),
      ),




    );
  }
  Widget itemCard (String title,String imgPath,bool isFavorite){
    return Padding(
      padding: EdgeInsets.only(left: 10.0,right: 10.0,top: 10.0),
      child: Container(
        height: 130.0,
        width: double.infinity,
        color: Colors.white,
        child: Row(
          children: <Widget>[
            Container(
              width: 140.0,
              height: 120.0,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage(imgPath),fit: BoxFit.cover),
              ),
            ),
            SizedBox
              (
              width: 6.0,
            ),
            Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Text(
                      title,
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      width: 45.0
                    ),
                    Material(
                      elevation: isFavorite?0.0:2.0,
                      borderRadius: BorderRadius.circular(20.0),
                      child: Container(
                        width: 40.0,
                        height: 40.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          color: isFavorite ? Colors.grey.withOpacity(0.2):Colors.white,
                        ),
                        child: Center(
                          child: isFavorite ? 
                          Icon(Icons.favorite_border):
                              Icon(Icons.favorite,color: Colors.red),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 1.0,
                ),
                Container(
                  width:185.0,
                  child: Text(
                    'Sacndinavian small size double sofa imported full leather/Dale italia oil wax leather black',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 10.0,
                      color: Colors.black38),
                  ),

                ),
                SizedBox
                  (
                  height: 8.0,
                ),
                Row(
                  children: <Widget>[
                    Container(
                      height: 45.0,
                      width: 60.0,
                      color: Colors.orange,
                      child: Center(
                        child: Text(
                          '\$240',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold
                          ),

                        ),
                      ),
                    ),
                    Container(
                      height: 45.0,
                      width: 120.0,
                      color: Colors.amber,
                      child: Center(
                        child: Text(
                          'Add to cart',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold
                          ),

                        ),
                      ),
                    )
                  ],
                )

              ],
            )
          ],
        ),
      ),
    );
  }



}
