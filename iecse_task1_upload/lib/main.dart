import 'dart:ui';
import 'package:image_picker/image_picker.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "My Profile App",
      home: Home()));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Color? bgcolor = Colors.blue[600];
  String name = "Pari Dhanani";
  String about = "Flutter Developer";
  String phoneno = "+91 98198 38026";
  String email = "pari.dhanani@learner.manipal.edu";
  AssetImage? image = AssetImage('assets/profilepic.jpg');
  var pic = null;

  Future _takePicture() async {
    final picker = ImagePicker();
    final imgfile =
        await picker.pickImage(source: ImageSource.camera, maxWidth: 600);
    return imgfile;
  }

  Future _choosePicture() async {
    final picker = ImagePicker();
    final imgfile =
        await picker.pickImage(source: ImageSource.gallery, maxWidth: 600);
    return imgfile;
  }

  popup(String item, BuildContext context) {
    TextEditingController myController = TextEditingController();
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text("Enter Value"),
            content: TextField(
              controller: myController,
            ),
            actions: <Widget>[
              MaterialButton(
                  elevation: 5,
                  child: Text("Submit"),
                  onPressed: () {
                    setState(() {
                      if (item == 'name')
                        this.name = myController.text;
                      else if (item == 'about')
                        this.about = myController.text;
                      else if (item == 'email')
                        this.email = myController.text;
                      else if (item == 'phoneno')
                        this.phoneno = myController.text;
                    });
                  })
            ],
          );
        });
  }

  imagepopup(BuildContext context) {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text("Import your picture"),
            actions: <Widget>[
              MaterialButton(
                  elevation: 5,
                  child: Text("Take a Picture!"),
                  onPressed: () {
                    setState(() {
                      this.pic = _takePicture();
                    });
                  }),
              MaterialButton(
                  elevation: 5,
                  child: Text("Choose from gallery!"),
                  onPressed: () {
                    setState(() {
                      this.pic = _choosePicture();
                    });
                  }),
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: bgcolor,
      child: Center(
          child: Container(
              padding: EdgeInsets.only(
                  left: 10.0, right: 10.0, top: 50.0, bottom: 40.0),
              alignment: Alignment.center,
              color: bgcolor,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  TextButton(
                    onPressed: null, //imagepopup(context),
                    child: CircleAvatar(
                      radius: 100,
                      backgroundColor: bgcolor,
                      backgroundImage: image,
                    ),
                  ),
                  Expanded(
                    child: TextButton(
                      onPressed: popup("name", context),
                      child: Text(
                        name,
                        textDirection: TextDirection.ltr,
                        style: TextStyle(
                            decoration: TextDecoration.none,
                            fontSize: 40.0,
                            fontFamily: "Pacifico",
                            fontWeight: FontWeight.w300,
                            color: Colors.white),
                      ),
                    ),
                  ),
                  Expanded(
                    child: TextButton(
                      onPressed: popup("about", context),
                      child: Text(
                        about.toUpperCase(),
                        textDirection: TextDirection.ltr,
                        style: TextStyle(
                            decoration: TextDecoration.none,
                            fontSize: 25.0,
                            fontFamily: "SourceSansPro",
                            color: Colors.white),
                      ),
                    ),
                  ),
                  Card(
                      margin:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      child: ListTile(
                          leading: Icon(Icons.phone_android_outlined,
                              size: 30, color: bgcolor),
                          title: TextButton(
                            onPressed: popup("phoneno", context),
                            child: Text(
                              phoneno,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: bgcolor),
                            ),
                          )),
                      color: Colors.white),
                  Card(
                      margin:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      child: ListTile(
                          leading: Icon(Icons.email, size: 30, color: bgcolor),
                          title: TextButton(
                            onPressed: popup("email", context),
                            child: Text(
                              email,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: bgcolor),
                            ),
                          )),
                      color: Colors.white),
                  SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      BgButton(Colors.blueGrey[700]),
                      BgButton(Colors.pink[900]),
                      BgButton(Colors.blue[800]),
                      BgButton(Colors.black),
                    ],
                  )
                ],
              ))),
    );
  }

  BgButton(Color? bg) {
    return ElevatedButton(
        style: OutlinedButton.styleFrom(
            side: BorderSide(color: Colors.white, width: 3.0),
            shape: CircleBorder()),
        onPressed: () {
          setState(() {
            bgcolor = bg;
          });
        },
        child: CircleAvatar(
          backgroundColor: bg,
        ));
  }
}
