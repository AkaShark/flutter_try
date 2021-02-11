import 'package:flutter/material.dart';
// import 'package:flutter_first/pages/tabs/Category.dart';
// import 'package:flutter_first/pages/tabs/Home.dart';
// import 'package:flutter_first/pages/tabs/Settings.dart';
import 'tabs/Category.dart';
import 'tabs/Home.dart';
import 'tabs/Settings.dart';

class Tabs extends StatefulWidget {
  final index;
  Tabs({Key key, this.index = 0}) : super(key: key);

  @override
  _TabsState createState() => _TabsState(this.index);
}

class _TabsState extends State<Tabs> {
  int index = 0;
  List list = [HomePage(), CategoryPage(), SettingPage()];

  _TabsState(index) {
    this.index = index;
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        floatingActionButton: Container(
          height: 70,
          width: 70,
          padding: EdgeInsets.all(8),
          margin: EdgeInsets.only(top: 2),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(35),
            color: Colors.white,
          ),
          child: FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: () {
              setState(() {
                this.index = 1;
              });
            },
            backgroundColor: this.index == 1 ? Colors.yellow : Colors.red,
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        // 上面的部分
        appBar: AppBar(
          title: Text("Flutter Demo"),
        ),
        body: this.list[index],
        bottomNavigationBar: BottomNavigationBar(
          iconSize: 25.0,
          selectedItemColor: Colors.red,
          type: BottomNavigationBarType.fixed, // 设置tab可以有多个按钮
          currentIndex: index,
          onTap: (int index) {
            setState(() {
              this.index = index;
            });
          },
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "首页"),
            BottomNavigationBarItem(icon: Icon(Icons.category), label: "分类"),
            BottomNavigationBarItem(icon: Icon(Icons.settings), label: "设置"),
          ],
        ),
        drawer: Drawer(
          // 左侧
          child: Column(
            children: <Widget>[
              // SizedBox(height: 100,),
              Row(
                children: <Widget>[
                  Expanded(
                    child: DrawerHeader(
                      child: Text("Hello Flutter"),
                      decoration: BoxDecoration(
                          // color: Colors.yellow
                          image: DecorationImage(
                              image: NetworkImage("https://www.itying.com/images/flutter/2.png"), // 设置背景图片
                              fit: BoxFit.cover)),
                    ),
                  )
                ],
              ),
              ListTile(
                leading: CircleAvatar(
                  child: Icon(Icons.handyman),
                ),
                title: Text("设置"),
              ),
              Divider(), // 类表分割线
              ListTile(
                leading: CircleAvatar(
                  child: Icon(Icons.handyman),
                ),
                title: Text("设置"),
              ),
              ListTile(
                leading: CircleAvatar(
                  child: Icon(Icons.handyman),
                ),
                title: Text("设置"),
              ),
            ],
          ),
        ),
        endDrawer: Drawer(
          child: Text("嘻嘻"),
        ),
      ),
    );
  }
}
