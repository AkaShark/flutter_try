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

// 自定义有状态组件
class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  List list = new List();
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: <Widget>[
          Column(
            children: this.list.map((value) {
              return ListTile(
                title: Text(value),
              );
            }).toList(),
          ),
          SizedBox(
            height: 20,
          ),
          RaisedButton(
            child: Text("button"),
            onPressed: () {
              setState(() {
                this.list.add("add");
              });
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
