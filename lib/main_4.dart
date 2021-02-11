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
      children: <Widget>[
        // 类似于cell 
        ListTile(
          title: Text(
            "哈哈哈哈哈哈哈哈哈",
            style: TextStyle(
              fontSize: 24,
            ),
            ),
          subtitle: Text("你看我哇咔咔"),
          leading: Icon(
            Icons.settings,
            color: Colors.yellow,
            size: 70,
            ),
        ),
         ListTile(
          trailing: Icon(Icons.home),
          title: Text("哈哈哈哈哈哈哈哈哈"),
          subtitle: Text("你看我哇咔咔"),
        ),
         ListTile( 
          title: Text("哈哈哈哈哈哈哈哈哈"),
          leading: Image.network("https://i0.hdslb.com/bfs/face/0cd621a535d99cc5eed5bd9243355c21d64a0e39.jpg_64x64.jpg"),
          subtitle: Text("你看我哇咔咔"),
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
