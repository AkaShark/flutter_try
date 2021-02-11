import 'package:flutter/material.dart';
// import 'res/listData.dart';
// flutter 的组件都是类

// MaterialAPP是作为根组件使用的 Scaffold 可以定义导航

class HomeContent extends StatelessWidget {
  // 自定义方法
  // List<Widget> _getListData() {
  //   var tempList = listData.map((value) {
  //     return Container(
  //       child: Column(
  //         children: <Widget>[
  //           Image.network(value['imageUrl']),
  //           SizedBox(
  //             height: 20,
  //           ),
  //           Text(
  //             value['title'],
  //             textAlign: TextAlign.center,
  //             style: TextStyle(fontSize: 15),
  //           )
  //         ],
  //       ),
  //       decoration: BoxDecoration(border: Border.all(color: Colors.cyan, width: 0.5)),
  //     );
  //   });
  //   return tempList.toList();
  // }

  @override
  Widget build(BuildContext context) {
    // Container容器组件 类似于view
    // center 相当于屏幕的view
    // GridView.Builder 和 ListView的builder一样的操作
    // gridview.Builder里面多了一个属性设置行间距列间距等属性
    return GridView.count(
      // padding: EdgeInsets.all(10),
      // mainAxisSpacing: 10.0, // 行间距
      // crossAxisSpacing: 10.0, // 列间距
      crossAxisCount: 2, // 一行有多少列
      // 设置高度没改变height
      childAspectRatio: 1.7,
      padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
      children: <Widget>[
        Padding(
          child: Image.network("https://www.itying.com/images/flutter/1.png", fit: BoxFit.cover,),
          padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
        ),
        Padding(
          child: Image.network("https://www.itying.com/images/flutter/1.png", fit: BoxFit.cover,),
          padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
        ),
        Padding(
          child: Image.network("https://www.itying.com/images/flutter/1.png", fit: BoxFit.cover,),
          padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
        ),
        Padding(
          child: Image.network("https://www.itying.com/images/flutter/2.png", fit: BoxFit.cover,),
          padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
        ),
        Padding(
          child: Image.network("https://www.itying.com/images/flutter/3.png", fit: BoxFit.cover,),
          padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
        ),
        Padding(
          child: Image.network("https://www.itying.com/images/flutter/4.png", fit: BoxFit.cover,),
          padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
        ),
        Padding(
          child: Image.network("https://www.itying.com/images/flutter/5.png", fit: BoxFit.cover,),
          padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
        ),
        Padding(
          child: Image.network("https://www.itying.com/images/flutter/6.png", fit: BoxFit.cover,),
          padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
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
