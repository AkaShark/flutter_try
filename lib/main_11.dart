import 'package:flutter/material.dart';
// import 'res/listData.dart';
// flutter 的组件都是类

// MaterialAPP是作为根组件使用的 Scaffold 可以定义导航

// 自定义组件
class IconContainer extends StatelessWidget {
  double size = 32.0;
  Color color = Colors.black;
  IconData icon;

  IconContainer(this.icon, {this.color, this.size});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      color: this.color,
      child: Center(
        child: Icon(
          this.icon,
          size: this.size,
          color: Colors.white,
        ),
      ),
    );
  }
}

class HomeContent extends StatelessWidget {
  // Container(
  //     height: 600.0,
  //     width: 400.0,
  //     color: Colors.pink,
  //     child: Column(
  //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  //     crossAxisAlignment: CrossAxisAlignment.center, // 相对于父布局来说的垂直布局的设置
  //     children: <Widget>[
  //       IconContainer(Icons.home, color: Colors.yellow),
  //       IconContainer(Icons.search, color: Colors.cyan),
  //       IconContainer(Icons.select_all, color: Colors.red),
  //       IconContainer(Icons.access_alarm, color: Colors.orange),
  //     ],
  //   ),
  //   );
  @override
  Widget build(BuildContext context) {
    return Row(
       children: <Widget>[
         Expanded(
           flex: 1,
           child: IconContainer(Icons.home, color: Colors.yellow),
         ),
        Expanded(
          flex: 2,
          child: IconContainer(Icons.search, color: Colors.cyan),
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
