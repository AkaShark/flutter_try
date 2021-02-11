import 'package:flutter/material.dart';
// flutter 的组件都是类

// MaterialAPP是作为根组件使用的 Scaffold 可以定义导航

class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Container容器组件 类似于view
    // center 相当于屏幕的view
    return Center(
      child: Container(
        child: Image.network(
          "https://i0.hdslb.com/bfs/face/0cd621a535d99cc5eed5bd9243355c21d64a0e39.jpg_64x64.jpg",
          alignment: Alignment.center,
          // color: Colors.yellow,
          // 混合颜色  
          // colorBlendMode: BlendMode.luminosity,
          // 全屏显示
          /*
          fill 全图显示 图片可能会被拉伸 充满容器
          contain 全图显示 显示原比例 可能会有空隙
          cover 充满 显示可能会拉伸 可能裁剪  一般使用这个 不变形
          */
          // fit: BoxFit.cover,
          // 平铺
          repeat: ImageRepeat.repeat,
        ),

        width: 300,
        height: 300,
        decoration: BoxDecoration(color: Colors.yellow),
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
