import 'package:flutter/material.dart';
// flutter 的组件都是类

// MaterialAPP是作为根组件使用的 Scaffold 可以定义导航

class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Container容器组件 类似于view
    // center 相当于屏幕的view
    return Container(
      height: 300,
      child: ListView(
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        // 类似于cell 
        Container(
          width: 180,
          height: 180,
          color: Colors.red,
        ),
        Container(
          width: 180,
          height: 180,
          color: Colors.orange
        ),
        Container(
          child: ListView(
            children: <Widget>[
              Image.network("https://i0.hdslb.com/bfs/face/0cd621a535d99cc5eed5bd9243355c21d64a0e39.jpg_64x64.jpg"),
              Text(
                "我的标题",
                style: TextStyle(
                  color: Colors.white
                ),
              )
            ],
          ),
          width: 180,
          height: 180,
          color: Colors.black,
        ),
        Container(
          width: 180,
          height: 180,
          color: Colors.purple,

        ),
        Container(
          width: 180,
          height: 180,
          color: Colors.blue,

        ),
        Container(
          width: 180,
          height: 180,
          color: Colors.cyan,
        ),
      ],
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
