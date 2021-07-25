import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var changeColor = Colors.teal;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: changeColor,
        body: SingleChildScrollView(
          child: Container(
            width: 500.0,
            height: 600.0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 70.0,
                  backgroundImage: AssetImage('images/dwight.jpg'),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  'Aayush  Patney',
                  style: TextStyle(
                    fontSize: 40.0,
                    fontFamily: 'Sacramento',
                    color: Colors.white,
                  ),
                ),
                Text(
                  ' FLUTTER DEVELOPER',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontFamily: 'NewsCycle',
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 10.0),
                  margin: EdgeInsets.fromLTRB(25.0, 15.0, 25.0, 5.0),
                  color: Colors.white,
                  child: Column(
                    children: [
                      TextField(
                        decoration: InputDecoration(
                          icon: Icon(
                            Icons.phone,
                            color: changeColor,
                          ),
                          hintText: "enter your phone number",
                          hintStyle: TextStyle(
                            fontSize: 20.0,
                            fontFamily: 'NewsCycle',
                            color: changeColor,
                            decoration: TextDecoration.none,
                          ),
                          border: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 5.0),
                  margin: EdgeInsets.fromLTRB(25.0, 5.0, 25.0, 15.0),
                  color: Colors.white,
                  child: Column(
                    children: [
                      TextField(
                        decoration: InputDecoration(
                          icon: Icon(
                            Icons.email,
                            color: changeColor,
                          ),
                          hintText: "enter your email id",
                          hintStyle: TextStyle(
                            fontSize: 20.0,
                            fontFamily: 'NewsCycle',
                            color: changeColor,
                            decoration: TextDecoration.none,
                          ),
                          border: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        // decoration: BoxDecoration(

                        //   border: Border.all(
                        //    color: Colors.black,
                        //     width: 3.0,
                        //     style: BorderStyle.solid,
                        //  ),
                        // ),
                        child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              changeColor = Colors.red;
                            });
                          },
                          child: Text('red'),
                          style: ElevatedButton.styleFrom(
                            primary: Colors.red,
                          ),
                        ),
                        width: 30.0,
                        height: 30.0,
                      ),
                      Container(
                        child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              changeColor = Colors.yellow;
                            });
                          },
                          child: Text('yellow'),
                          style: ElevatedButton.styleFrom(
                            primary: Colors.yellow,
                          ),
                        ),
                        width: 30.0,
                        height: 30.0,
                        //color: Colors.yellow,
                      ),
                      Container(
                        child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              changeColor = Colors.pink;
                            });
                          },
                          child: Text('red'),
                          style: ElevatedButton.styleFrom(
                            primary: Colors.pink,
                          ),
                        ),
                        width: 30.0,
                        height: 30.0,
                        color: Colors.pink,
                      ),
                      Container(
                        child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              changeColor = Colors.orange;
                            });
                          },
                          child: Text('red'),
                          style: ElevatedButton.styleFrom(
                            primary: Colors.orange,
                          ),
                        ),
                        width: 30.0,
                        height: 30.0,
                        color: Colors.orange,
                      ),
                      Container(
                        child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              changeColor = Colors.purple;
                            });
                          },
                          child: Text('red'),
                          style: ElevatedButton.styleFrom(
                            primary: Colors.purple,
                          ),
                        ),
                        width: 30.0,
                        height: 30.0,
                        color: Colors.purple,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
