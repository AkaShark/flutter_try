import 'package:flutter/material.dart';
// import 'res/listData.dart';
// flutter 的组件都是类

// MaterialAPP是作为根组件使用的 Scaffold 可以定义导航

class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // stack 层级组件
    return Center(
      child: Container(
        height: 400,
        width: 300,
        color: Colors.red,
        // stack里面的组件的相对于stack的父组件进行定位的配合align进行布局的控制
        child: Stack(
          children: <Widget>[
            Positioned(
              left: 10,
              child: Icon(
              Icons.home, 
              size: 40,
              color: Colors.white,
              ),
            ),
            Positioned(
              bottom: 0,
              child: Icon(
              Icons.search, 
              size: 30,
              color: Colors.white,
              ),
            ),
             Positioned(
              right: 0,
              child: Icon(
              Icons.send, 
              size: 60,
              color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MyApp extends StatelessWidget {
  @override
  // 返回一个组件 万物皆组件 抽离组件
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        // 上面的部分
        appBar: AppBar(
          title: Text("Flutter Demo"),
        ),
        body: HomeContent(),
      ),
      theme: ThemeData(primaryColor: Colors.cyan),
    );
  }
}

void main(List<String> args) {
  runApp(MyApp());
}

