import 'package:flutter/material.dart';
import 'NewRoute1.dart';
import 'NewRoute2.dart';

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
