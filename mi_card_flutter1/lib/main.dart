import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue[900],
        body: SafeArea(child: InputText()),
      ),
    );
  }
}

class InputText extends StatefulWidget {
  @override
  _InputTextState createState() => _InputTextState();
}

class _InputTextState extends State<InputText> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CircleAvatar(
          radius: 70.0,
          backgroundImage: AssetImage('images/profile.jpg'),
        ),
        TextField(
          decoration: InputDecoration(
              border: OutlineInputBorder(), hintText: 'Enter Name'),
          textAlign: TextAlign.center,
          style: TextStyle(
            fontFamily: 'SourceSansPro',
            fontSize: 40.0,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        TextField(
          decoration: InputDecoration(
              border: OutlineInputBorder(), hintText: 'Enter Occupation'),
          textAlign: TextAlign.center,
          style: TextStyle(
            fontFamily: 'SourceSansProItalic',
            fontSize: 30.0,
            color: Colors.white,
            fontWeight: FontWeight.bold,
            //letterSpacing: 3,
          ),
        ),
        Card(
          color: Colors.white,
          margin: EdgeInsets.symmetric(vertical: 20.0, horizontal: 30.0),
          child: ListTile(
            leading: Icon(
              Icons.phone,
              color: Colors.blue,
            ),
            title: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(), hintText: 'Enter Phone Number'),
              style: TextStyle(
                color: Colors.blue,
                fontSize: 25.0,
              ),
            ),
          ),
        ),
        Card(
          color: Colors.white,
          margin: EdgeInsets.symmetric(vertical: 20.0, horizontal: 30.0),
          child: ListTile(
            leading: Icon(
              Icons.email,
              color: Colors.blue,
            ),
            title: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(), hintText: 'Enter E-mail ID'),
              style: TextStyle(
                color: Colors.blue,
                fontSize: 25.0,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
