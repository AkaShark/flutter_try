import 'package:flutter/material.dart';
// import 'res/listData.dart';
// flutter 的组件都是类

// MaterialAPP是作为根组件使用的 Scaffold 可以定义导航

class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(height: 10,),
        Row(
          children: <Widget>[
            // expanded 浮动分隔布局 flex 
            Expanded(
              child: Container(
                alignment: Alignment.center,
                height: 180,
                color: Colors.cyan,
                child: Text(
                  "你好",
                  style: TextStyle(
                    fontSize: 25,
                  ),
                  ),
        ),
        )
        ],
        ),
        SizedBox(height: 10,),
        Row(
          children: <Widget>[
            // 自适应
            Expanded(
              flex: 2,
              child: Container(
                height: 180,
                child: Image.network("https://www.itying.com/images/flutter/1.png", fit: BoxFit.cover,),
              )
            ),
            SizedBox(width: 10,),
             Expanded(
              flex: 1,
              child: Container(
                height: 180,
                child: ListView(
                  children: <Widget>[
                    Container(
                      height: 85,
                      child: Image.network("https://www.itying.com/images/flutter/3.png", fit: BoxFit.cover,),
                    ),
                    SizedBox(height: 10,),
                    Container(
                      height: 85,
                      child: Image.network("https://www.itying.com/images/flutter/2.png", fit: BoxFit.cover,),
                    ),
                  ],
                )
              ),
            ),

          ],
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
