import 'package:flutter/material.dart';
import 'package:flutter_app/simple/MyHomePage.dart';
import 'package:flutter_app/simple/NewRoute.dart';

//material 标准的移动端和Web视觉设计语言
void main() => runApp(new MyApp()); //dart 的单行函数

/*
 *MyApp类代表Flutter应用，它继承了 StatelessWidget类，这也就意味着应用本身也是一个widget。
 */
class MyApp extends StatelessWidget {
  //widget的主要工作是提供一个build()方法来描述如何根据其他较低级别的widget来显示自己
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      theme: new ThemeData(primarySwatch: Colors.blue),
      routes: {
        //注册路由表
        "new_page": (context) => NewRoute(),
      },
      home: MyHomePage(
        title: 'demo',
      ),
    );
  }
}

class Simple extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      title: '动态改变Text的值',
      theme: new ThemeData(primarySwatch: Colors.blue),
      home: new Test(),
    );
  }
}

class Test extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new TestState();
  }

  Test({Key key}) : super(key: key);
}

class TestState extends State<Test> {
  String _text = '小英雄王二小';

  void _updateText() {
    setState(() {
      if (_text == '小英雄王二小') {
        _text = '王二小是小英雄';
      } else {
        _text = '小英雄王二小';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('test'),
      ),
      body: new Center(child: new Text(_text)),
      floatingActionButton: new FloatingActionButton(
        onPressed: _updateText,
        tooltip: 'Update Text',
        child: new Icon(Icons.update),
      ),
    );
  }
}
