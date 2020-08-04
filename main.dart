import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('MOODMUSIC'),
          backgroundColor: Colors.pinkAccent,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [Colors.red, Colors.blue])),
              width: 167,
              height: 150,
              child: Card(
                color: Colors.transparent,
                child: Image.asset('images/prafull.jpg'),
                elevation: 20,
              ),
            ),
            Container(
              width: 90,
              height: 40,
              child: RaisedButton(
                onPressed: () {
                  print('Audio playing');
                  var audio = AudioCache();
                  audio.play('faded.mp3');
                },
                child: Card(
                  color: Colors.blue,
                  child: Text('Play Audio'),
                  elevation: 10,
                ),
              ),
            ),
            Container(
              width: 90,
              height: 40,
              child: RaisedButton(
                onPressed: () {
                  print('Audio Pause');
                  var audio = AudioCache();
                  audio.play('');
                },
                child: Card(
                  color: Colors.green,
                  child: Text('Pause Audio'),
                  elevation: 10,
                ),
              ),
            ),
            Container(
              width: 90,
              height: 40,
              child: RaisedButton(
                onPressed: () {
                  print('Audio Stop');
                  var audio = AudioCache();
                  audio.play('');
                },
                child: Card(
                  color: Colors.red,
                  child: Text('Stop Audio'),
                  elevation: 10,
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  gradient:
                      LinearGradient(colors: [Colors.pink, Colors.yellow])),
              width: 400,
              height: 200,
              child: Card(
                color: Colors.transparent,
                child: Image.asset('images/videocover.jpg'),
                elevation: 20,
              ),
            ),
            Container(
              width: 90,
              height: 40,
              child: RaisedButton(
                onPressed: () {
                  print('Video Playing');
                },
                child: Card(
                  color: Colors.blue,
                  child: Text('Play video'),
                  elevation: 10,
                ),
              ),
            ),
            Container(
              width: 90,
              height: 40,
              child: RaisedButton(
                onPressed: () {
                  print('Video Pause');
                },
                child: Card(
                  color: Colors.green,
                  child: Text('Pause Video'),
                  elevation: 10,
                ),
              ),
            ),
            Container(
              width: 90,
              height: 40,
              child: RaisedButton(
                onPressed: () {
                  print('Video Stop');
                },
                child: Card(
                  color: Colors.red,
                  child: Text('Stop Video'),
                  elevation: 10,
                ),
              ),
            ),
          ],
        ),
        backgroundColor: Colors.lightGreenAccent,
      ),
    );
  }
}
