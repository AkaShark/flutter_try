import 'package:flutter/material.dart';
// flutter 的组件都是类

// MaterialAPP是作为根组件使用的 Scaffold 可以定义导航

class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Container容器组件 类似于view
    // center 相当于屏幕的view
    return ListView(
      scrollDirection: Axis.vertical,
      padding: EdgeInsets.all(10),
      // children 可以放任意的组件 
      children: <Widget>[
        Image.network("https://i0.hdslb.com/bfs/face/0cd621a535d99cc5eed5bd9243355c21d64a0e39.jpg_64x64.jpg"),
        Container(
          padding: EdgeInsets.all(10),
          height: 60,
          color: Colors.yellow,
          child: Text(
            "标题",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 18),
          ),
        ),
        Image.network("https://i0.hdslb.com/bfs/face/0cd621a535d99cc5eed5bd9243355c21d64a0e39.jpg_64x64.jpg"),
        Container(
          padding: EdgeInsets.all(10),
          height: 60,
          color: Colors.yellow,
          child: Text(
            "标题",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 18),
          ),
        ),
        Image.network("https://i0.hdslb.com/bfs/face/0cd621a535d99cc5eed5bd9243355c21d64a0e39.jpg_64x64.jpg"),
        Container(
          padding: EdgeInsets.all(10),
          height: 60,
          color: Colors.yellow,
          child: Text(
            "标题",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 18),
          ),
        ),
        Image.network("https://i0.hdslb.com/bfs/face/0cd621a535d99cc5eed5bd9243355c21d64a0e39.jpg_64x64.jpg"),
        Container(
          padding: EdgeInsets.all(10),
          height: 60,
          color: Colors.yellow,
          child: Text(
            "标题",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 18),
          ),
        ),
        Image.network("https://i0.hdslb.com/bfs/face/0cd621a535d99cc5eed5bd9243355c21d64a0e39.jpg_64x64.jpg"),
        Container(
          padding: EdgeInsets.all(10),
          height: 60,
          color: Colors.yellow,
          child: Text(
            "标题",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 18),
          ),
        ),
      ],
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
