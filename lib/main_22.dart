import 'package:flutter/material.dart';
import 'res/listData.dart';
// flutter 的组件都是类

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
        body: HomePage(),
      ),
      theme: ThemeData(primaryColor: Colors.cyan),
    );
  }
}

class HomePage extends StatelessWidget {
  int count = 0;
  // const HomePage({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 100,
          ),
          Text("${this.count}"),
          SizedBox(
            height: 100,
          ),
          RaisedButton(
            child: Text("按钮"),
            onPressed: () {
              this.count++;
              print(this.count++);
            },
          )
        ],
      ),
    );
  }
}

void main(List<String> args) {
  runApp(MyApp());
}
