import 'package:flutter/material.dart';
import 'res/listData.dart';
// flutter 的组件都是类

// MaterialAPP是作为根组件使用的 Scaffold 可以定义导航

/*
定义cell 图片在下文字在上的样子 
*/
class ListViewItem extends StatelessWidget {
  var index = 0;

  ListViewItem(index) {
    this.index = index;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: <Widget>[
          Align(
            alignment: Alignment.center,
            child: Image.network(listData[index]["imageUrl"]),
          ),
           Align(
            alignment: Alignment.center,
            child: Text("这是第$index条数据"),
          ),
        ],
      ),
    );
  }
}

class HomeContent extends StatelessWidget {

  List<Widget> _getItemForListView() {
    List<Widget> res = new List();
    for (int i = 0; i < 6; i++) {
      res.add(ListViewItem(i));
    }
    return res;
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: this._getItemForListView()
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
