import 'package:flutter/material.dart';

/*
 *使用GridView将widget放置为二维列表。 GridView提供了两个预制list，或者您可以构建自定义网格。
 * 当GridView检测到其内容太长而不适合渲染框时，它会自动滚动。
 */
class CardViewLayout extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new CardViewLayoutState();
  }
}

List<Container> _list(int count) {
  return new List<Container>.generate(
      count,
      (int index) => new Container(
            child: new Image.network(
                'https://ss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=2421657588,1230763321&fm=27&gp=0.jpg'),
          ));
}

Widget buildGrid() {
  return new GridView.extent(
      maxCrossAxisExtent: 150.0,
      padding: const EdgeInsets.all(4.0),
      mainAxisSpacing: 4.0,
      crossAxisSpacing: 4.0,
      children: _list(30));
}

// ignore: duplicate_definition
class CardViewLayoutState extends State<CardViewLayout> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('GridView'),
      ),
      body: new Center(
        child: buildGrid(),
      ),
    );
  }
}
