//主界面
import 'package:flutter/material.dart';
import 'package:flutter_app/other/MCabinPage.dart';
import 'package:flutter_app/other/HotPage.dart';
import 'package:flutter_app/other/OrderPage.dart';
import 'package:flutter_app/other/MyPage.dart';

/*
 * Widget 有无状态 取决于 要控制的页面有无状态
 */
class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
        debugShowCheckedModeBanner: false, home: new MainPageWidget());
  }
}

class MainPageWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new MainPageState();
  }
}

class MainPageState extends State<MainPageWidget> {
  int _tabIndex = 0;
  var tabImages;
  var appBarTitles = ['影舱', '热映', '订单', '我的'];

  /*
   // ignore: slash_for_doc_comments
   * 存放页面，跟fragmentList一样
   */
  var _pageList;

  /*
   * 选择position
   */
  Image getTabIcon(int currentIndex) {
    if (currentIndex == _tabIndex) {
      return tabImages[currentIndex][1];
    }
    return tabImages[currentIndex][0];
  }

  Text getTabTitle(int currentIndex) {
    if (currentIndex == _tabIndex) {
      return new Text(appBarTitles[currentIndex],
          style: new TextStyle(fontSize: 14.0, color: const Color(0xff1296db)));
    } else {
      return new Text(appBarTitles[currentIndex],
          style: new TextStyle(fontSize: 14.0, color: const Color(0xff515151)));
    }
  }

  /*
   *根据路径获取图片 
   */
  Image getTabImage(path) {
    return new Image.asset(path, width: 24.0, height: 24.0);
  }

  void initData() {
    tabImages = [
      [
        getTabImage('images/ic_movie_nor.png'),
        getTabImage('images/ic_movie_act.png')
      ],
      [
        getTabImage('images/ic_movie_nor.png'),
        getTabImage('images/ic_movie_act.png')
      ],
      [
        getTabImage('images/ic_movie_nor.png'),
        getTabImage('images/ic_movie_act.png')
      ],
      [
        getTabImage('images/ic_movie_nor.png'),
        getTabImage('images/ic_movie_act.png')
      ]
    ];

    _pageList = [
      new MCabinPage(),
      new HotPage(),
      new OrderPage(),
      new MyPage()
    ];
  }

  @override
  Widget build(BuildContext context) {
    initData();

    return Scaffold(
      body: _pageList[_tabIndex],
      bottomNavigationBar: new BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          new BottomNavigationBarItem(
              icon: getTabIcon(0), title: getTabTitle(0)),
          new BottomNavigationBarItem(
              icon: getTabIcon(1), title: getTabTitle(1)),
          new BottomNavigationBarItem(
              icon: getTabIcon(2), title: getTabTitle(2)),
          new BottomNavigationBarItem(
              icon: getTabIcon(3), title: getTabTitle(3)),
        ],
        type: BottomNavigationBarType.fixed,
        currentIndex: _tabIndex,
        iconSize: 24.0,
        onTap: (index) {
          setState(() {
            _tabIndex = index;
          });
        },
      ),
    );
  }
}
