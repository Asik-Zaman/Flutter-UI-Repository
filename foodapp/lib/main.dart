import 'package:flutter/material.dart';
import 'package:foodapp/detailsPage.dart';

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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: ListView(

        children: <Widget>[
         Padding(
           padding: EdgeInsets.only(top: 15.0,left: 10.0),
           child: Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: <Widget>[
               IconButton(
                   icon: Icon (Icons.arrow_back_ios),
                   color: Colors.white,
                   onPressed: (){}
               ),
               Container(
                 width: 125.0,
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: <Widget>[
                     IconButton(
                       icon: Icon(Icons.filter_list),
                       color: Colors.white,
                       onPressed: (){},
                     ),
                     IconButton(
                       icon: Icon(Icons.menu),
                       color: Colors.white,
                       onPressed: (){},
                     ),
                   ],
                 ),
               )
             ],
           ),
         ),
          SizedBox(
            height: 25.0,
          ),
          Padding(
            padding: EdgeInsets.only(left:40.0),
            child: Row(
              children: <Widget>[
                Text(
                  "Healthy",
                  style: TextStyle(
                    fontSize: 25.0,
                    color: Colors.white,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.bold
                  ),
                ),
                SizedBox(width: 10.0),
                Text(
                  "Food",
                  style: TextStyle(
                      fontSize: 25.0,
                      color: Colors.white,
                      fontFamily: 'Montserrat',
                  ),
                ),
              ],
            ),
          ),
          SizedBox
            (
            height: 40.0,
          ),
          Container(
            height: MediaQuery.of(context).size.height - 185.0,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(60.0)),
            ),
            child: ListView(
              primary: false,
              padding: EdgeInsets.only(left: 25.0,right: 20.0),
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 45.0),
                  child: Container(
                    height: MediaQuery.of(context).size.height -320.0,
                    child: ListView(
                      children: <Widget>[
                        _buildFoodItem('assets/images/pic1.jpg', 'Salmon Bowl', '\$25'),
                        _buildFoodItem('assets/images/pic2.jpg', 'Spring Bowl', '\$17'),
                        _buildFoodItem('assets/images/pic3.jpg', 'Avocado Bowl', '\$22'),
                        _buildFoodItem('assets/images/pic4.jpg', 'berry Bowl', '\$20'),
                      ],
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      width: 65.0,
                      height: 60.0,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey,
                          style: BorderStyle.solid,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Center(
                        child: Icon(
                            Icons.search,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Container(
                      width: 65.0,
                      height: 60.0,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey,
                          style: BorderStyle.solid,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Center(
                        child: Column(
                          children: <Widget>[
                            Text(
                              "2",
                              textAlign: TextAlign.right,
                            ),
                            Icon(Icons.shopping_basket),
                          ],
                        )
                      ),
                    ),
                    Container(
                      width: 150.0,
                      height: 60.0,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey,
                          style: BorderStyle.solid,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Center(
                        child: Text(
                         "CHECKOUT",
                          style: TextStyle(
                            fontSize: 17.0,
                            color: Colors.black,
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
    );
  }

  Widget _buildFoodItem(String imgPath,String foodName,String price){
    return Padding(
      padding: EdgeInsets.only(left: 10.0,right: 10.0,top: 10.0),
      child: InkWell(
        onTap: (){
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context)=>detailsPageInfo(heroTag:imgPath,foodName:foodName,foodPrice:price)));

        },
        child: Row(
          children: <Widget>[
            Hero(
              tag: imgPath,
              child: Image(
                  image: AssetImage(imgPath),
                fit: BoxFit.cover,
                height: 75.0,
                width: 75.0,
              ),
            ),
            SizedBox(
              width: 10.0,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  foodName,
                  style:TextStyle(
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Montserrat',
                    fontSize: 17.0,
                  ),
                ),
                Text(
                  price,
                  style:TextStyle(
                    color: Colors.grey,
                    fontFamily: 'Montserrat',
                    fontSize: 17.0,
                  ),
                ),
              ],
            ),
            SizedBox(
              width: 25.0,
            ),
            IconButton(icon: Icon(Icons.add),
                color: Colors.black,
                onPressed: (){}),

          ],

        ),

      ),

    );
  }



}
