import 'package:flutter/material.dart';
import 'package:fusion_app/dashboard.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: LoginPage(),
  ));
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _value = false;
  void _onChanged(bool value) {
    setState(() {
      _value = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.fromLTRB(15.0, 85.0, 0.0, 0.0),
                    child: Container(
                      height: 70.0,
                      width: 180.0,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/images/pic1.png'),
                            fit: BoxFit.fill),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10.0,
              ),
              Padding(
                padding: EdgeInsets.only(left: 10.0),
                child: Text(
                  'Log In',
                  style: TextStyle(
                    color: Colors.lightBlueAccent,
                    fontSize: 35.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: 5.0,
              ),
              Padding(
                padding: EdgeInsets.only(left: 10.0),
                child: Text(
                  'to your account',
                  style: TextStyle(
                    color: Colors.lightBlueAccent,
                    fontSize: 25.0,
                  ),
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              Padding(
                padding: EdgeInsets.only(left: 10.0),
                child: Text(
                  'Username',
                  style: TextStyle(
                    letterSpacing: 0.8,
                    color: Colors.grey,
                    fontSize: 16.0,
                  ),
                ),
              ),
              Padding(
                  padding: EdgeInsets.only(left: 10.0, right: 10.0),
                  child: Container(
                    height: 40.0,
                    width: MediaQuery.of(context).size.width,
                    child: TextField(
                      cursorColor: Colors.grey,
                      cursorWidth: 2.0,
                      showCursor: false,
                      obscureText: true,
                      decoration: InputDecoration(
                        prefixIcon:
                            Icon(Icons.person, color: Colors.lightBlueAccent),
                        border: OutlineInputBorder(),
                        focusColor: Colors.grey,
                      ),
                    ),
                  )),
              SizedBox(
                height: 12.0,
              ),
              Padding(
                padding: EdgeInsets.only(left: 10.0),
                child: Text(
                  'Password',
                  style: TextStyle(
                    letterSpacing: 0.8,
                    color: Colors.grey,
                    fontSize: 16.0,
                  ),
                ),
              ),
              Padding(
                  padding: EdgeInsets.only(left: 10.0, right: 10.0),
                  child: Container(
                    height: 40.0,
                    width: MediaQuery.of(context).size.width,
                    child: TextField(
                      cursorColor: Colors.grey,
                      cursorWidth: 2.0,
                      showCursor: false,
                      obscureText: true,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.lock_outline,
                            color: Colors.lightBlueAccent),
                        border: OutlineInputBorder(),
                        focusColor: Colors.green,
                      ),
                    ),
                  )),
              SizedBox(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(left: 10.0),
                    child: Text(
                      'Show Password',
                      style: TextStyle(
                        letterSpacing: 0.5,
                        color: Colors.grey,
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 5.0,
                  ),
                  Transform.scale(
                    scale: 1.5,
                    child: new Switch(
                        activeColor: Colors.pink,
                        value: _value,
                        onChanged: (bool value) {
                          _onChanged(value);
                        }),
                  ),
                  SizedBox(
                    width: 80.0,
                  ),
                  FloatingActionButton(
                    backgroundColor: Colors.white,
                    child: Center(
                      child: Icon(Icons.arrow_forward,color: Colors.lightBlue,size: 25.0,),
                    ),
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context)=>new Dashboard(),
                      ));
                    },
                    elevation: 8.0,

                  )
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
