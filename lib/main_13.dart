import 'package:flutter/material.dart';
// import 'res/listData.dart';
// flutter 的组件都是类

// MaterialAPP是作为根组件使用的 Scaffold 可以定义导航

class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // stack 层级组件
    return Center(
      child: Stack(
        alignment: Alignment.bottomLeft,
      children: <Widget>[
        Container(
          width: 400,
          height: 300,
          color: Colors.red,
        ),
        Text(
          "哇咔咔",
          style: TextStyle(
            fontSize: 40,
            color: Colors.white
          ),
        ),
        // Container(
        //   height: 400,
        //   width: 300,
        //   color: Colors.cyan,
        // )
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
