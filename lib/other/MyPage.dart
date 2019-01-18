import 'package:flutter/material.dart';

class MyPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new MyPageState();
  }
}

class MyPageState extends State<MyPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return layout(context);
  }

  Widget layout(BuildContext context) {
    return new Scaffold(
      appBar: buildAppBar(context),
      body: new ListView(
        children: <Widget>[
          header(context),
          header(context),
          header(context),
          header(context),
          header(context),
        ],
      ),
    );
  }

  buildAppBar(BuildContext context) {
    return new AppBar(title: const Text('影舱'));
  }

  header(BuildContext context) {
    return new Image.network(
        'http://i2.yeyou.itc.cn/2014/huoying/hd_20140925/hyimage06.jpg');
  }
}
