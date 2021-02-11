import 'package:flutter/material.dart';

class AppBarPage extends StatelessWidget {
  const AppBarPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child:  Scaffold(
      appBar: AppBar(
        title: Text("AppBarDemo"),
        // backgroundColor: Colors.red,
        centerTitle: true, // 是否居中显示
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: (){

            },
          )
        ],
        bottom: TabBar(
          isScrollable: true, // 是否可以滑动
          tabs: <Widget>[
            Tab(
              text: "热门",
            ),
            Tab(
              text: "推荐",
            ),
            Tab(
              text: "设置",
            ),
          ],
        ),
      ),
      body: TabBarView(
        children: <Widget>[
          ListView(
            children: <Widget>[
              ListTile(
                title: Text("第一个"),
              ),
              ListTile(
                title: Text("第一个"),
              ),
              ListTile(
                title: Text("第一个"),
              ),
              ListTile(
                title: Text("第一个"),
              ),
              ListTile(
                title: Text("第一个"),
              ),
            ],
          ),
          ListView(
            children: <Widget>[
              ListTile(
                title: Text("第二个"),
              ),
              ListTile(
                title: Text("第二个"),
              ),
              ListTile(
                title: Text("第二个"),
              ),
              ListTile(
                title: Text("第二个"),
              ),
              ListTile(
                title: Text("第二个"),
              ),
            ],
          ),
          ListView(
            children: <Widget>[
              ListTile(
                title: Text("第三个"),
              ),
              ListTile(
                title: Text("第三个"),
              ),
              ListTile(
                title: Text("第三个"),
              ),
              ListTile(
                title: Text("第三个"),
              ),
              ListTile(
                title: Text("第三个"),
              ),
            ],
          )
        ],
      )
      ),
    );
  }
}
