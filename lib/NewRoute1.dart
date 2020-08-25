import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

class NewRoute1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AudioCache player = AudioCache();
    return Scaffold(
      appBar: new AppBar(
        title: Text("温柔型"),
      ),
      body: new Center(
          child: new Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          FlatButton.icon(
            icon: Icon(Icons.volume_up),
            label: Text(
              "请打开麦克风交流                                                                    ",
              textAlign: TextAlign.start,
            ),
            onPressed: () {
              player.play('chat.mp3');
            },
          ),
          FlatButton.icon(
            icon: Icon(Icons.volume_up),
            label: Text(
              "别开枪，小心行驶                                                                    ",
              textAlign: TextAlign.start,
            ),
            onPressed: () {
              player.play('careful.mp3');
            },
          ),
          FlatButton.icon(
            icon: Icon(Icons.volume_up),
            label: Text(
              "我掩护，你们先撤                                                                    ",
              textAlign: TextAlign.start,
            ),
            onPressed: () {
              player.play('cover.mp3');
            },
          ),
          FlatButton.icon(
            icon: Icon(Icons.volume_up),
            label: Text(
              "不要怕，有我在                                                                        ",
              textAlign: TextAlign.start,
            ),
            onPressed: () {
              player.play('donotafrial.mp3');
            },
          ),
          FlatButton.icon(
            icon: Icon(Icons.volume_up),
            label: Text(
              "前方有敌人                                                                               ",
              textAlign: TextAlign.start,
            ),
            onPressed: () {
              player.play('enemy.mp3');
            },
          ),
          FlatButton.icon(
            icon: Icon(Icons.volume_up),
            label: Text(
              "我这里有物资                                                                           ",
              textAlign: TextAlign.start,
            ),
            onPressed: () {
              player.play('goods.mp3');
            },
          ),
          FlatButton.icon(
            icon: Icon(Icons.volume_up),
            label: Text(
              "打稳点，可以吗                                                                        ",
              textAlign: TextAlign.start,
            ),
            onPressed: () {
              player.play('steady.mp3');
            },
          ),
          FlatButton.icon(
            icon: Icon(Icons.volume_up),
            label: Text(
              "快上车                                                                                            ",
              textAlign: TextAlign.start,
            ),
            onPressed: () {
              player.play('takeup.mp3');
            },
          ),
          FlatButton.icon(
            icon: Icon(Icons.volume_up),
            label: Text(
              "撤离，向信号接受区进发                                                        ",
              textAlign: TextAlign.start,
            ),
            onPressed: () {
              player.play('evacuee.mp3');
            },
          ),
        ],
      )),
    );
  }
}
