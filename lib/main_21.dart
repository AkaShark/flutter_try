import 'package:flutter/material.dart';
import 'res/listData.dart';
// flutter 的组件都是类

// MaterialAPP是作为根组件使用的 Scaffold 可以定义导航

class MyButton extends StatelessWidget {
  final String text;
  MyButton(this.text);
  
  @override
  Widget build(BuildContext context) {
    // 按钮组件
    return RaisedButton(
      child: Text(text),
      textColor: Theme.of(context).accentColor,
      onPressed: () {},
    );
  }
}

class HomeContent extends StatelessWidget {
  @override
  // listView无法嵌套ListView
  Widget build(BuildContext context) {
    return Container( // 相对于container布局
      height: 600,
      width: 400,
      color: Colors.pink,
      padding: EdgeInsets.all(10),
      child: Wrap(
      spacing: 10, // 主轴间距
      runSpacing: 10, // 次轴间距
      alignment: WrapAlignment.center, // 主轴对齐方式
      runAlignment: WrapAlignment.center, // 次轴对齐方式
      direction: Axis.vertical,
      children: <Widget>[
        MyButton("哈哈哈"),
        MyButton("哈哈哈"),
        MyButton("哈哈哈"),
        MyButton("哈哈哈"),
        MyButton("哈哈哈")
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
