import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() => runApp(ProfileApp());
  SharedPreferences ?localStorage;
 TextEditingController emailController = new TextEditingController();
 TextEditingController phoneController = new TextEditingController();

class ProfileApp extends StatelessWidget {
  static Future init() async{
    localStorage =await SharedPreferences.getInstance();
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'iecse profile page',
      home: ProfilePage(),
    );
  }
}

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}
class _ProfilePageState extends State<ProfilePage> {
  Color _appColor = Colors.black;
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
               Container(
                 
                 child: Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: <Widget>[
                     Text('Email id:',
                     style: TextStyle(
                       fontWeight: FontWeight.bold,fontSize: 15.0,),
                     ),
                     SizedBox(height: 10,),
                     TextField(
                       controller: emailController,
                       obscureText: false,
                       decoration: InputDecoration(
                 prefixIcon: Icon(Icons.mail,color:_appColor,),
                 filled: true,
                              fillColor: Colors.white,
                             border: OutlineInputBorder(), 
                             labelText: 'Enter your email ',
                             labelStyle:TextStyle(color:_appColor)
                           ),
                       ),
                   ],
                 ),
               ),
             Container(
                 margin: EdgeInsets.symmetric(vertical:2.0),
                 child: Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: <Widget>[
                     Text('phone:',
                     style: TextStyle(
                       fontWeight: FontWeight.bold,fontSize: 15.0,),
                     ),
                     SizedBox(height: 10,),
                     TextField(
                       controller: phoneController,
                       obscureText: false,
                       decoration: InputDecoration(
                 prefixIcon: Icon(Icons.phone_android,color:_appColor,),
                 filled: true,
                              fillColor: Colors.white,
                             border: OutlineInputBorder(), 
                             labelText: 'Enter your phone number ',
                             labelStyle:TextStyle(color:_appColor)
                           ),
                       ),
                   ],
                 ),
               ),
            SizedBox(height: 10.0),
            RaisedButton(
              onPressed: save,
              child: Text('login'),
            ),
            if(localStorage!=null)
            Padding(padding: EdgeInsets.all(15.0),
            child: Text("user logged in!! -> Email id:${localStorage!.get('email')} phone:${localStorage!.get('phone')} ",style: TextStyle(fontSize: 15.0,color:Colors.white),),),
          
            Wrap( 
              children: <Widget>[
                _colorButton(Colors.blueGrey),
                _colorButton(Colors.deepOrange),
                _colorButton(Colors.green),
                _colorButton(Colors.cyan),
                _colorButton(Colors.pink),
                _colorButton(Colors.purpleAccent),
                _colorButton(Colors.red),
                _colorButton(Colors.brown),
               
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
save() async{
  await ProfileApp.init();
  localStorage!.setString('email', emailController.text.toString());
  localStorage!.setString('phone', phoneController.text.toString());
}
