import 'package:flutter/material.dart';
import 'package:fusion_app/profile.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Collection(),
  ));
}

class Collection extends StatefulWidget {
  @override
  _CollectionState createState() => _CollectionState();
}

class _CollectionState extends State<Collection> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white70,
        centerTitle: true,
        title: Text(
          'Collection',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: ListView(
        children: <Widget>[
          Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.fromLTRB(5.0, 15.0, 5.0, 0.0),
                child: Container(
                  height: 40.0,
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    children: <Widget>[
                      Container(
                        child: Center(
                          child: Text(
                            'Organization',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 14.0,
                                color: Colors.black,
                                letterSpacing: 1.0),
                          ),
                        ),
                        height: 40.0,
                        width: MediaQuery.of(context).size.width / 2 - 70.0,
                        decoration: BoxDecoration(
                            color: Colors.cyanAccent,
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(12.0),
                                topLeft: Radius.circular(12.0))),
                      ),
                      Container(
                        child: Center(
                          child: Text(
                            'SCBL CEMENT',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18.0,
                                color: Colors.black,
                                letterSpacing: 1.0),
                          ),
                        ),
                        height: 40.0,
                        width: MediaQuery.of(context).size.width / 2 + 60.0,
                        decoration: BoxDecoration(
                            color: Colors.blueGrey.withOpacity(0.3),
                            borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(12.0),
                                topRight: Radius.circular(12.0))),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(5.0, 10.0, 5.0, 0.0),
                child: Container(
                  height: 40.0,
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    children: <Widget>[
                      Container(
                        child: Center(
                          child: Text(
                            'Account',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 14.0,
                                color: Colors.black,
                                letterSpacing: 1.0),
                          ),
                        ),
                        height: 40.0,
                        width: MediaQuery.of(context).size.width / 2 - 70.0,
                        decoration: BoxDecoration(
                            color: Colors.cyanAccent,
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(12.0),
                                topLeft: Radius.circular(12.0))),
                      ),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            SizedBox(
                              width: 5.0,
                            ),
                            Center(
                              child: Text(
                                'Select a bank account',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15.0,
                                    color: Colors.black,
                                    letterSpacing: 1.0),
                              ),
                            ),
                            SizedBox(
                              width: 0.0,
                            ),
                            Icon(
                              Icons.arrow_drop_down,
                              color: Colors.black,
                              size: 25.0,
                            ),
                          ],
                        ),
                        height: 40.0,
                        width: MediaQuery.of(context).size.width / 2 + 60.0,
                        decoration: BoxDecoration(
                            color: Colors.blueGrey.withOpacity(0.3),
                            borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(12.0),
                                topRight: Radius.circular(12.0))),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(5.0, 11.0, 5.0, 0.0),
                child: Container(
                  height: 40.0,
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    children: <Widget>[
                      Container(
                        child: Center(
                          child: Text(
                            'Mode',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 14.0,
                                color: Colors.black,
                                letterSpacing: 1.0),
                          ),
                        ),
                        height: 40.0,
                        width: MediaQuery.of(context).size.width / 2 - 70.0,
                        decoration: BoxDecoration(
                            color: Colors.cyanAccent,
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(12.0),
                                topLeft: Radius.circular(12.0))),
                      ),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            SizedBox(
                              width: 40.0,
                            ),
                            Center(
                              child: Text(
                                'Select a Mode',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15.0,
                                    color: Colors.black,
                                    letterSpacing: 1.0),
                              ),
                            ),
                            SizedBox(
                              width: 14.0,
                            ),
                            Icon(
                              Icons.arrow_drop_down,
                              color: Colors.black,
                              size: 25.0,
                            ),
                          ],
                        ),
                        height: 40.0,
                        width: MediaQuery.of(context).size.width / 2 + 60.0,
                        decoration: BoxDecoration(
                            color: Colors.blueGrey.withOpacity(0.3),
                            borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(12.0),
                                topRight: Radius.circular(12.0))),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(5.0, 11.0, 5.0, 0.0),
                child: Container(
                  height: 33.0,
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    children: <Widget>[
                      Container(
                        child: Center(
                          child: Text(
                            ' Deposite No  :',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 14.0,
                                color: Colors.black,
                                letterSpacing: 1.0),
                          ),
                        ),
                        height: 33.0,
                        width: MediaQuery.of(context).size.width / 2 - 70.0,
                        decoration: BoxDecoration(
                            color: Colors.blueGrey.withOpacity(0.3),
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(12.0),
                                topLeft: Radius.circular(12.0))),
                      ),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            SizedBox(
                              width: 10.0,
                            ),
                            Center(
                              child: Text(
                                'Enter Deposite',
                                style: TextStyle(
                                    fontSize: 15.0,
                                    color: Colors.black.withOpacity(0.2),
                                    letterSpacing: 1.0),
                              ),
                            ),
                          ],
                        ),
                        height: 33.0,
                        width: MediaQuery.of(context).size.width / 2 + 60.0,
                        decoration: BoxDecoration(
                            color: Colors.blueGrey.withOpacity(0.3),
                            borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(12.0),
                                topRight: Radius.circular(12.0))),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(5.0, 11.0, 5.0, 0.0),
                child: Container(
                  height: 33.0,
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    children: <Widget>[
                      Container(
                        child: Center(
                          child: Text(
                            ' Instrument  :',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 14.0,
                                color: Colors.black,
                                letterSpacing: 1.0),
                          ),
                        ),
                        height: 33.0,
                        width: MediaQuery.of(context).size.width / 2 - 70.0,
                        decoration: BoxDecoration(
                            color: Colors.blueGrey.withOpacity(0.3),
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(12.0),
                                topLeft: Radius.circular(12.0))),
                      ),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            SizedBox(
                              width: 10.0,
                            ),
                            Center(
                              child: Text(
                                'Enter Instrument',
                                style: TextStyle(
                                    fontSize: 15.0,
                                    color: Colors.black.withOpacity(0.2),
                                    letterSpacing: 1.0),
                              ),
                            ),
                          ],
                        ),
                        height: 33.0,
                        width: MediaQuery.of(context).size.width / 2 + 60.0,
                        decoration: BoxDecoration(
                            color: Colors.blueGrey.withOpacity(0.3),
                            borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(12.0),
                                topRight: Radius.circular(12.0))),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(5.0, 11.0, 5.0, 0.0),
                child: Container(
                  height: 33.0,
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    children: <Widget>[
                      Container(
                        child: Center(
                          child: Text(
                            'Date',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 14.0,
                                color: Colors.black,
                                letterSpacing: 1.0),
                          ),
                        ),
                        height: 33.0,
                        width: MediaQuery.of(context).size.width / 2 - 70.0,
                        decoration: BoxDecoration(
                            color: Colors.cyanAccent,
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(12.0),
                                topLeft: Radius.circular(12.0))),
                      ),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            SizedBox(
                              width: 50.0,
                            ),
                            Center(
                              child: Text(
                                '28-Sep-2019',
                                style: TextStyle(
                                    fontSize: 15.0,
                                    color: Colors.redAccent,
                                    letterSpacing: 1.0),
                              ),
                            ),
                          ],
                        ),
                        height: 33.0,
                        width: MediaQuery.of(context).size.width / 2 + 60.0,
                        decoration: BoxDecoration(
                            color: Colors.blueGrey.withOpacity(0.3),
                            borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(12.0),
                                topRight: Radius.circular(12.0))),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(5.0, 11.0, 5.0, 0.0),
                child: Container(
                  height: 33.0,
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    children: <Widget>[
                      Container(
                        child: Center(
                          child: Text(
                            '   Remarks :',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 14.0,
                                color: Colors.black,
                                letterSpacing: 1.0),
                          ),
                        ),
                        height: 33.0,
                        width: MediaQuery.of(context).size.width / 2 - 70.0,
                        decoration: BoxDecoration(
                            color: Colors.blueGrey.withOpacity(0.3),
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(12.0),
                                topLeft: Radius.circular(12.0))),
                      ),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            SizedBox(
                              width: 10.0,
                            ),
                            Center(
                              child: Text(
                                'Enter Remarks',
                                style: TextStyle(
                                    fontSize: 15.0,
                                    color: Colors.black.withOpacity(0.2),
                                    letterSpacing: 1.0),
                              ),
                            ),
                          ],
                        ),
                        height: 33.0,
                        width: MediaQuery.of(context).size.width / 2 + 60.0,
                        decoration: BoxDecoration(
                            color: Colors.blueGrey.withOpacity(0.3),
                            borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(12.0),
                                topRight: Radius.circular(12.0))),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(5.0, 11.0, 5.0, 0.0),
                child: Container(
                  height: 33.0,
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    children: <Widget>[
                      Container(
                        child: Center(
                          child: Text(
                            '   Ammount :',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 14.0,
                                color: Colors.black,
                                letterSpacing: 1.0),
                          ),
                        ),
                        height: 33.0,
                        width: MediaQuery.of(context).size.width / 2 - 70.0,
                        decoration: BoxDecoration(
                            color: Colors.blueGrey.withOpacity(0.3),
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(12.0),
                                topLeft: Radius.circular(12.0))),
                      ),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            SizedBox(
                              width: 10.0,
                            ),
                            Center(
                              child: Text(
                                'Enter Ammount',
                                style: TextStyle(
                                    fontSize: 15.0,
                                    color: Colors.black.withOpacity(0.2),
                                    letterSpacing: 1.0),
                              ),
                            ),
                          ],
                        ),
                        height: 33.0,
                        width: MediaQuery.of(context).size.width / 2 + 60.0,
                        decoration: BoxDecoration(
                            color: Colors.blueGrey.withOpacity(0.3),
                            borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(12.0),
                                topRight: Radius.circular(12.0))),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0.0, 15.0, 0.0, 0.0),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.grey.withOpacity(0.2),
                    ),
                  ),
                  height: 40.0,
                  width: MediaQuery.of(context).size.width,
                  child: Center(
                    child: Text(
                      'Customer Details',
                      style: TextStyle(
                          letterSpacing: 1.5,
                          color: Colors.black,
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(11.0, 15.0, 5.0, 0.0),
                child: Row(
                  children: <Widget>[
                    Container(
                      height: 40.0,
                      width: 165.0,
                      child: Row(
                        children: <Widget>[
                          Container(
                            height: 40.0,
                            width: 100.0,
                            child: Center(
                              child: Text(
                                'Difference:',
                                style: TextStyle(
                                    letterSpacing: 1.0,
                                    color: Colors.black,
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            decoration: BoxDecoration(
                                color: Colors.cyanAccent,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10.0),
                                  bottomLeft: Radius.circular(10.0),
                                )),
                          ),
                          Container(
                            height: 40.0,
                            width: 65.0,
                            child: Center(
                              child: Text(
                                '0.0',
                                style: TextStyle(
                                    letterSpacing: 1.0,
                                    color: Colors.blue,
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            decoration: BoxDecoration(
                                color: Colors.blueGrey.withOpacity(0.3),
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(10.0),
                                  bottomRight: Radius.circular(10.0),
                                )),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Container(
                      height: 40.0,
                      width: 165.0,
                      child: Row(
                        children: <Widget>[
                          Container(
                            height: 40.0,
                            width: 80.0,
                            child: Center(
                              child: Text(
                                'Total:',
                                style: TextStyle(
                                    letterSpacing: 1.0,
                                    color: Colors.black,
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            decoration: BoxDecoration(
                                color: Colors.cyanAccent,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10.0),
                                  bottomLeft: Radius.circular(10.0),
                                )),
                          ),
                          Container(
                            height: 40.0,
                            width: 85.0,
                            child: Center(
                              child: Text(
                                '0.0',
                                style: TextStyle(
                                    letterSpacing: 1.0,
                                    color: Colors.blue,
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            decoration: BoxDecoration(
                                color: Colors.blueGrey.withOpacity(0.3),
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(10.0),
                                  bottomRight: Radius.circular(10.0),
                                )),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(5.0, 15.0, 5.0, 0.0),
                child: Container(
                  height: 40.0,
                  width: MediaQuery.of(context).size.width,
                  child: RaisedButton(
                    textColor: Colors.white,
                    color: Colors.blue,
                    elevation: 5.0,
                    child: Text("Add Customer"),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context)=>new ProfilePage(),
                      ));
                    },
                    shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(10.0),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
