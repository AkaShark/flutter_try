import 'package:flutter/material.dart';
import 'res/listData.dart';

// flutter 的组件都是类

// MaterialAPP是作为根组件使用的 Scaffold 可以定义导航

class HomeContent extends StatelessWidget {
  // 自定义方法
  List<Widget> _getData() {
    var tempList = listData.map((value) {
      return ListTile(
        title: Text(value["title"]),
        subtitle: Text(value["author"]),
        leading: Image.network(value["imageUrl"]),
      );
    });
    return tempList.toList();
  }

  @override
  Widget build(BuildContext context) {
    // Container容器组件 类似于view
    // center 相当于屏幕的view
    return ListView(
      children: this._getData(),
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
