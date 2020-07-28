import 'package:flutter/material.dart';

class detailsPageInfo extends StatefulWidget {
  final heroTag;
  final foodName;
  final foodPrice;

  detailsPageInfo({this.heroTag,this.foodName,this.foodPrice});

  @override
  _detailsPageInfoState createState() => _detailsPageInfoState();
}

class _detailsPageInfoState extends State<detailsPageInfo> {
  var selectedCard = "WEIGHT";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(Icons.arrow_back_ios),
            onPressed: (){
              Navigator.of(context).pop();
            }),
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        title: Text(
          "Details",
          style: TextStyle(
            fontSize: 20.0,
            fontFamily: 'Montserrat',fontWeight: FontWeight.bold,color: Colors.white,
          ),
        ),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
              icon: Icon(
                  Icons.more_horiz,
                color: Colors.white,
              ),
              onPressed: (){}),
        ],
      ),

      body: ListView(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height -82.0,
                width: MediaQuery.of(context).size.width,
                color: Colors.transparent,
              ),
              Positioned(
                top: 75.0,
                child: Container(
                  height: MediaQuery.of(context).size.height -100.0,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(48.0),
                      topRight: Radius.circular(48.0),
                    ),
                    color: Colors.white,
                  ),
                ),
              ),
              Positioned(
                top: 30.0,
                left: (MediaQuery.of(context).size.width /2 - 100.0),

                child: Hero(
                  tag: widget.heroTag,
                  child: Container(
                    height: 200.0,
                    width: 200.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(topRight: Radius.circular(50.0),topLeft: Radius.circular(50.0),bottomLeft: Radius.circular(50.0),bottomRight: Radius.circular(50.0),

                      ),
                        image: DecorationImage(image: AssetImage(widget.heroTag),fit: BoxFit.cover),

                    ),
                  ),


                ),
              ),

              Positioned(
                top: 250.0,
                left: 25.0,
                right: 25.0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      widget.foodName,
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 22.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: <Widget>[
                       Text(
                         widget.foodPrice,
                         style: TextStyle(
                           fontFamily: 'Montserrat',
                           color: Colors.grey,
                           fontSize: 20.0,
                         ),
                       ),
                       Container(
                         height: 20.0,
                         width: 1.0,
                         color: Colors.grey,
                       ),
                       Container(
                         width: 125.0,
                         height: 40.0,
                         decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(20.0),
                           color: Colors.blue,
                         ),
                         child: Row(
                           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                           children: <Widget>[
                             InkWell(
                               onTap: (){},
                               child: Container(
                                 height: 25.0,
                                 width: 25.0,
                                 decoration: BoxDecoration(
                                   borderRadius: BorderRadius.circular(7.0),
                                 ),
                                 child: Center(
                                   child: Icon(Icons.remove,color: Colors.white,size: 20.0,),
                                 ),
                               ),

                             ),
                             Text(
                               "2",
                               style: TextStyle(
                                 fontSize: 15.0,
                                 fontFamily: 'Montserrat',
                                 color: Colors.white,
                               ),
                             ),
                             InkWell(
                               onTap: (){},
                               child: Container(
                                 height: 25.0,
                                 width: 25.0,
                                 decoration: BoxDecoration(
                                   borderRadius: BorderRadius.circular(7.0),
                                   color: Colors.white,
                                 ),
                                 child: Center(
                                   child: Icon(
                                     Icons.add,
                                     color: Colors.black,
                                     size: 20.0,
                                   ),
                                 ),
                               ),
                             ),
                           ],
                         ),
                       )

                     ],
                   ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Container(
                      height: 150.0,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          _buildCardInfo('WEIGHT', '300', 'G'),
                          SizedBox(width: 10.0),
                          _buildCardInfo('CALORIES', '267', 'CAL'),
                          SizedBox(width: 10.0),
                          _buildCardInfo('VITAMINS', 'A,B6', 'VIT'),
                          SizedBox(width: 10.0),
                          _buildCardInfo('AVAIL', 'NO', 'AVL'),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20.0
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 8.0),
                      child: Container(
                        height: 50.0,
                        decoration: BoxDecoration(
                          borderRadius:BorderRadius.only(bottomLeft: Radius.circular(20.0),bottomRight: Radius.circular(20.0),topLeft: Radius.circular(10.0),topRight: Radius.circular(10.0)),
                          
                          color: Colors.black,
                        ),
                        child: Center(
                          child: Text(
                              '\$52.00',
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 18.0,
                              color: Colors.white,
                            ),

                          ),
                        ),
                      ),
                    )

                  ],
                ),
              )
            ],
          )
        ],
      ),
      );
    }
  Widget _buildCardInfo(String cardTitle,String info,String unit){
    return InkWell(
     onTap: (){
       selectCard(cardTitle);
     },
      child: AnimatedContainer(
          duration: Duration(milliseconds: 500),
        curve: Curves.easeIn,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: cardTitle==selectedCard ? Color(0xFF7A9BEE): Colors.white,
          border: Border.all(
            color: cardTitle== selectedCard  ?
                Colors.transparent:
                Colors.grey.withOpacity(0.3),
            style: BorderStyle.solid,
            width: 0.75,
          ),
        ),
        height: 100.0,
        width: 100.0,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 8.0,left: 15.0),
              child: Text(
                cardTitle,
                style: TextStyle(
                  fontSize: 12.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Montserrat',
                  color: cardTitle== selectedCard?
                      Colors.white:
                      Colors.grey,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 85.0,left: 15.0),
              child: Text(
                info,
                style: TextStyle(
                  fontSize: 15.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Montserrat',
                  color: cardTitle== selectedCard?
                  Colors.white:
                  Colors.black,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0,bottom: 5.0),
              child: Text(
                unit,
                style: TextStyle(
                  fontSize: 12.0,
                  fontFamily: 'Montserrat',
                  color: cardTitle== selectedCard?
                  Colors.white:
                  Colors.grey,
                ),
              ),
            ),

          ],
        ),



      ),
    );


  }
  selectCard(cardTitle){
      setState(() {
        selectedCard = cardTitle;
      });
  }





}
