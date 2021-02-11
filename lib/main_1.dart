import 'package:flutter/material.dart';
// flutter 的组件都是类

// MaterialAPP是作为根组件使用的 Scaffold 可以定义导航

class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // 容器组件 类似于view
    return Center(
        child: Container(
      child: Text(
        "你好flutter",
        textAlign: TextAlign.center,
        overflow: TextOverflow.ellipsis,
        maxLines: 1,
        textScaleFactor: 1.2,
        style: TextStyle(fontSize: 16.0, 
        color: 
        Colors.white, 
        fontWeight: FontWeight.w300,
        fontStyle: FontStyle.italic,
        decoration: TextDecoration.lineThrough,
        decorationColor: Colors.black,
        decorationStyle: TextDecorationStyle.dashed,
        letterSpacing: 5.0
        ),
      ),
      height: 300.0,
      width: 300.0,
      decoration: BoxDecoration(
        color: Colors.red,
        border: Border.all(
          color: Colors.blue,
          width: 2.0,
       ),
       borderRadius: BorderRadius.all(
         Radius.circular(20.0)
       )
       ),
      //  padding: EdgeInsets.all(20),
      padding: EdgeInsets.fromLTRB(10, 30, 5, 0),
      // transform: Matrix4.translationValues(0, 0, 0),
      // transform: Matrix4.rotationZ(0.3),
      alignment: Alignment.centerLeft,

    )
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
