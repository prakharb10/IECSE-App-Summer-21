import 'package:flutter/material.dart';

void main() => runApp(ProfileApp());

class ProfileApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'IECSE Profile Page',
      home: ProfilePage(),
    );
  }
}

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  Color _appColor = Colors.purpleAccent;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _appColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 100.0,
              height: 100.0,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage('assets/flash.gif'),
                ),
                border: Border.all(color: Colors.white),
              ),
            ),
            SizedBox(height: 20.0),
            Text(
              'Yashwanth',
              style: TextStyle(
                color: Colors.white,
                fontSize: 50.0,
                
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'FLUTTER DEVELOPER',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                  ),
            ),
            SizedBox(height: 20.0),
               Padding(
          padding: EdgeInsets.symmetric(horizontal: 25, vertical: 16),
          child: TextFormField(
            decoration: InputDecoration(
               prefixIcon: Icon(Icons.phone_android,color:_appColor,),
               filled: true,
	             fillColor: Colors.white,
              border: OutlineInputBorder(), 
              labelText: 'Enter your phone number',
              labelStyle:TextStyle(color:_appColor)
            ),
          ),
        ),
            // _infoTile(icon: Icons.phone_android, title: '+91 9632587412'),
            // _infoTile(icon: Icons.mail, title: 'Example@gmail.com'),
             Padding(
          padding: EdgeInsets.symmetric(horizontal: 25, vertical: 16),
          child: TextFormField(
            decoration: InputDecoration(
               prefixIcon: Icon(Icons.email,color:_appColor,),
               filled: true,
	             fillColor: Colors.white,
              border: OutlineInputBorder(), 
              labelText: 'Enter your gmail',
              labelStyle:TextStyle(color:_appColor)
            ),
          ),
        ),
            SizedBox(height: 10.0),
            Row(  
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                
                _colorButton(Colors.black),
                _colorButton(Colors.deepOrange),
                _colorButton(Colors.green),
                _colorButton(Colors.cyan),
               
              ],
            ),
          ],
        ),
      ),
    );
  }
  Widget _colorButton(Color color) {
    return  FlatButton(
        color: color,
        onPressed: () => _changeColor(color),
        child:Container(
          height: 18.0,
          width: 18.0,
          decoration: BoxDecoration(
        border: Border.all(
          color: Colors.white,
        ),
      ),
        )  
      );
      }
  void _changeColor(Color color) {
    setState(() {
      _appColor = color;
    });
  }
}