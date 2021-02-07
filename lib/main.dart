import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Music(),
    );
  }
}

class Music extends StatefulWidget {
  @override
  _MusicState createState() => _MusicState();
}

class _MusicState extends State<Music> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        new Scaffold(
          appBar: AppBar(
            toolbarHeight: 70,
             centerTitle: true,
            backgroundColor: Color.fromRGBO(
              36,
              148,
              215,
              1,
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.only(bottom: 50.0, right: 10),
                child: Icon(
                  Icons.more_horiz_outlined,
                  size: 40,
                ),
              )
            ],
            leading: Padding(
              padding: const EdgeInsets.only(bottom: 50),
              child: Icon(
                Icons.arrow_back_ios,
                size: 20,
              ),
            ),
            title: Padding(
              padding: const EdgeInsets.only(bottom: 50.0),
              child: Text(
                'Song',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w400,
                ),
                
              ),
            ),
          ),
        ),
        new Container(
          child: new Center(
            child: new Container(
              height: 620.0,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: Column(
                children: [
                  
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
