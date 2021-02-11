import 'package:flutter/material.dart';
// flutter 的组件都是类

// MaterialAPP是作为根组件使用的 Scaffold 可以定义导航

class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Container容器组件 类似于view
    // center 相当于屏幕的view
    // return Center(
    //   child: Container(
    //     width: 300,
    //     height: 300,
    //     decoration: BoxDecoration(
    //       color: Colors.yellow,
    //       image: DecorationImage(
    //           image:
    //               NetworkImage("https://i0.hdslb.com/bfs/face/0cd621a535d99cc5eed5bd9243355c21d64a0e39.jpg_64x64.jpg"),
    //           fit: BoxFit.cover),
    //       borderRadius: BorderRadius.all(
    //         Radius.circular(150),
    //       ),
    //     ),
    //   ),
    // );

    return Center(
      child: Container(
        child: ClipOval(
          child: Image.asset("images/1.jpg",
          fit: BoxFit.cover,
          ),
        ),
        // 圆角图片的处理 不变形的情况下处理 嵌套一个ClipOval
        // child: ClipOval(
        //     child: Image.network(
        //   "https://i0.hdslb.com/bfs/face/0cd621a535d99cc5eed5bd9243355c21d64a0e39.jpg_64x64.jpg",
        //   width: 100,
        //   height: 100,
        //   fit: BoxFit.cover,
        // )),
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
