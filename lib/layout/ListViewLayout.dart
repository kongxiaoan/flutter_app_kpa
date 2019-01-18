import 'package:flutter/material.dart';

class ListViewLayout extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new ListViewLayoutState();
  }
}

List<Widget> list = <Widget>[
  new ListTile(
    title: new Text(
      '列表',
      style: new TextStyle(fontWeight: FontWeight.w500, fontSize: 20.0),
    ),
    subtitle: new Text('真是一个列表'),
    leading: new Icon(
      Icons.theaters,
      color: Colors.blue[500],
    ),
  ),
  new ListTile(
    title: new Text('The Castro Theater',
        style: new TextStyle(fontWeight: FontWeight.w500, fontSize: 20.0)),
    subtitle: new Text('429 Castro St'),
    leading: new Icon(
      Icons.theaters,
      color: Colors.blue[500],
    ),
  ),
];

class ListViewLayoutState extends State<ListViewLayout> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: const Text('ListView()'),
      ),
      body: new Center(
        child: new ListView(
          children: list,
        ),
      ),
    );
  }
}
