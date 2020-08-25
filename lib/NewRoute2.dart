import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';


class NewRoute2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AudioCache player = AudioCache();
    return Scaffold(
      appBar: new AppBar(
        title: Text("放飞型"),
      ),
      body: new ListView(
        children: <Widget>[
          FlatButton.icon(
            icon: Icon(Icons.volume_up),
            label: Text(
              "想跑？门都没有                                                                           ",
              textAlign: TextAlign.start,
            ),
            onPressed: () {
              player.play('run.mp3');
            },
          ),
          FlatButton.icon(
            icon: Icon(Icons.volume_up),
            label: Text(
              "你在讲笑话                                                                                   ",
              textAlign: TextAlign.start,
            ),
            onPressed: () {
              player.play('joke.mp3');
            },
          ),
          FlatButton.icon(
            icon: Icon(Icons.volume_up),
            label: Text(
              "我最帅                                                                                            ",
              textAlign: TextAlign.start,
            ),
            onPressed: () {
              player.play('handsome.mp3');
            },
          ),
          FlatButton.icon(
            icon: Icon(Icons.volume_up),
            label: Text(
              "霸气                                                                                               ",
              textAlign: TextAlign.start,
            ),
            onPressed: () {
              player.play('aggre.mp3');
            },
          ),
          FlatButton.icon(
            icon: Icon(Icons.volume_up),
            label: Text(
              "就这                                                                                                ",
              textAlign: TextAlign.start,
            ),
            onPressed: () {
              player.play('onlythis.mp3');
            },
          ),
          FlatButton.icon(
            icon: Icon(Icons.volume_up),
            label: Text(
              "寻找车辆                                                                                       ",
              textAlign: TextAlign.start,
            ),
            onPressed: () {
              player.play('tesila.mp3');
            },
          ),
          FlatButton.icon(
            icon: Icon(Icons.volume_up),
            label: Text(
              "打飞机                                                                                          ",
              textAlign: TextAlign.start,
            ),
            onPressed: () {
              player.play('plane.mp3');
            },
          ),
        ],
      ),
    );
  }
}
