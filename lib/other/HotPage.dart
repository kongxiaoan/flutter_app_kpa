import 'package:flutter/material.dart';

class HotPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new HotPageState();
  }
}

class HotPageState extends State<HotPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Container(
      height: 56.0, //单位是逻辑上的像素（并非真实的像素，类似于浏览器中的像素）
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      decoration: new BoxDecoration(color: Colors.blue[500]),
      child: new Row(
        // Row 是水平方向的线性布局（linear layout）
        children: <Widget>[
          new IconButton(
              icon: new Icon(Icons.menu),
              tooltip: 'Navigation menu',
              onPressed: null), //null 会禁用 button
          new Expanded(
            child: new Text('Test'),
          ),
          new IconButton(
              icon: new Icon(Icons.search), tooltip: 'Search', onPressed: null),
        ],
      ),
    );
  }
}
