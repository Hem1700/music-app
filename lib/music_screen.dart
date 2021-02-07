import 'package:flutter/material.dart';
import 'package:audio_service/audio_service.dart';

class Music extends StatefulWidget {
  @override
  _MusicState createState() => _MusicState();
}

bool _onPlay = false;

class _MusicState extends State<Music> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          new Scaffold(
            appBar: AppBar(
              toolbarHeight: 70,
              centerTitle: true,
              backgroundColor: Color.fromRGBO(
                99,
                173,
                208,
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
          Material(
            type: MaterialType.transparency,
            child: new Container(
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
                      SizedBox(
                        height: 50,
                      ),
                      Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(100),
                        ),
                        elevation: 20,
                        child: CircleAvatar(
                          radius: 100,
                          backgroundColor: Colors.white,
                          child: Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage('assets/lofi.jpg'),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Center(
                        child: Text(
                          'Snowmine',
                          style: TextStyle(
                            fontSize: 35,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Center(
                        child: Text(
                          'Let me in',
                          style: TextStyle(
                            fontWeight: FontWeight.w200,
                            fontSize: 20,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Slider(
                        value: 5,
                        min: 3.0,
                        max: 10.0,
                        //label: _sid.toInt().toString(),
                        divisions: 7,
                        onChanged: (value) {
                          setState(
                            () {
                              value = 5;
                            },
                          );
                        },
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.fast_rewind_outlined,
                            size: 40,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          InkWell(
                            child: _onPlay
                                ? Icon(
                                    Icons.play_arrow_sharp,
                                    size: 80,
                                    color: Color.fromRGBO(
                                      99,
                                      173,
                                      208,
                                      1,
                                    ),
                                  )
                                : Icon(
                                    Icons.pause,
                                    size: 80,
                                    color: Color.fromRGBO(
                                      99,
                                      173,
                                      208,
                                      1,
                                    ),
                                  ),
                            onTap: () {
                              setState(() {
                                _onPlay = false;
                              });
                            },
                            onDoubleTap: () {
                              setState(() {
                                _onPlay = true;
                              });
                            },
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Icon(
                            Icons.fast_forward_outlined,
                            size: 40,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          SafeArea(
            child: Align(
              widthFactor: double.infinity,
              heightFactor: double.infinity,
              alignment: Alignment.bottomRight,
              child: new Container(
                height: 100,
                color: Colors.white,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.shuffle_rounded,
                        size: 40,
                        color: Color.fromRGBO(
                          99,
                          173,
                          208,
                          1,
                        ),
                      ),
                      Text(
                        'Lyrics',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      Icon(
                        Icons.replay,
                        size: 40,
                        color: Color.fromRGBO(
                          99,
                          173,
                          208,
                          1,
                        ),
                      )
                    ]),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
