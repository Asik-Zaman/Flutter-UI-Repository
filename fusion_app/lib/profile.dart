import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  home: ProfilePage(),
  ));

}
class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white70,
        title: Text(
          'Profile',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        centerTitle: true,
      ),
    );
  }
}
