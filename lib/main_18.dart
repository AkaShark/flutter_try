import 'package:flutter/material.dart';
// import 'res/listData.dart';
// flutter 的组件都是类

// MaterialAPP是作为根组件使用的 Scaffold 可以定义导航

class HomeContent extends StatelessWidget {
  @override
  // listView无法嵌套ListView
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Card(
          margin: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              ListTile(
                title: Text("张三", style: TextStyle(fontSize: 28),),
                subtitle: Text("高级工程师"),
              ),
              ListTile(
                title: Text("电话:xxxxxxx"),
              ),
              ListTile(
                title: Text("地址:xxxxxx"),
              )
            ],
          ),
        ),
        Card(
          margin: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              ListTile(
                title: Text("张三", style: TextStyle(fontSize: 28),),
                subtitle: Text("高级工程师"),
              ),
              ListTile(
                title: Text("电话:xxxxxxx"),
              ),
              ListTile(
                title: Text("地址:xxxxxx"),
              )
            ],
          ),
        ),
        Card(
          margin: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              ListTile(
                title: Text("张三", style: TextStyle(fontSize: 28),),
                subtitle: Text("高级工程师"),
              ),
              ListTile(
                title: Text("电话:xxxxxxx"),
              ),
              ListTile(
                title: Text("地址:xxxxxx"),
              )
            ],
          ),
        )
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
