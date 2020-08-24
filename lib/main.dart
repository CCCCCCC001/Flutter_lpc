import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        title: "慢热语音包",
        theme: new ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: new MyHomePage(title: "慢热lpc"));
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void _incrementCounter() {
    setState(() {});
  }

  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: new Center(
          child: new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new Text(
            '和平精英主播',
          ),
          new Text(
            '慢热lpc',
            style: Theme.of(context).textTheme.headline,
          ),
          OutlineButton(
            child: Text("温柔型"),
            onPressed: () async {
              var result = await Navigator.push(context,
                  MaterialPageRoute(builder: (context) {
                return NewRoute1(
                    // text:"1",
                    );
              }));
              print(result);
            },
          ),
          OutlineButton(
            child: Text("放飞型"),
            onPressed: () async {
              var result = await Navigator.push(context,
                  MaterialPageRoute(builder: (context) {
                return NewRoute2(
                    // text:"1",
                    );
              }));
              print(result);
            },
          ),
        ],
      )),
    );
  }
}

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
