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
  int count = 0;
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          SizedBox(height: 100,),
          Chip( // 圆角按钮 
            label: Text("${this.count}"),
          ),
          RaisedButton(
            child: Text("button"),
            onPressed: () {
              setState(() {
                this.count++;
              });
              print(this.count);
            },
          ),
        ],
      ),
    );
  }
}

void main(List<String> args) {
  runApp(MyApp());
}
