import 'package:flutter/material.dart';

class ButtonPages extends StatelessWidget {
  const ButtonPages({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add, color: Colors.black, size: 40,),
        backgroundColor: Colors.yellow,
        onPressed: () {
          print("floating");
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          )
        ],
        title: Text("按钮演示页面"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                // 设置按钮宽高外面套个container
                width: 50,
                height: 200,
                child: RaisedButton(
                  color: Colors.blue,
                  textColor: Colors.white,
                  elevation: 10, // 阴影效果

                  child: Text("普通按钮"),
                  onPressed: () {},
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                // 自适应按钮 使用expanded包一层
                child: Container(
                  // 设置按钮宽高外面套个container
                  child: RaisedButton(
                    color: Colors.blue,

                    textColor: Colors.white,
                    elevation: 10, // 阴影效果

                    child: Text("普通按钮"),
                    onPressed: () {},
                  ),
                ),
              ),
              RaisedButton.icon(
                icon: Icon(Icons.search),
                label: Text("hah"),
                color: Colors.cyan,
                //  onPressed: null,// 禁用
                onPressed: () {},
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                child: Text("圆角"),
                color: Colors.cyan,
                // shape: RoundedRectangleBorder(
                //   borderRadius: BorderRadius.circular(10) // 圆角按钮
                // ),
                shape: CircleBorder(side: BorderSide(color: Colors.cyan)),
                onPressed: () {},
                splashColor: Colors.black, // 水波为颜色
              ),
              FlatButton(
                child: Text("扁平化按钮"),
                color: Colors.black,
                textColor: Colors.white,
                onPressed: () {},
              ),
              OutlineButton(
                // 带边框的按钮 没有背景颜色
                child: Text("按钮"),
                color: Colors.cyan, // 边框颜色
                onPressed: () {},
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ButtonBar(
                children: <Widget>[
                  FlatButton(
                    child: Text("扁平化按钮"),
                    color: Colors.black,
                    textColor: Colors.white,
                    onPressed: () {},
                  ),
                  MyButton(
                    // 自定义button
                    text: "哈哈",
                    height: 50.0,
                    width: 50.0,
                    pressed: () {
                      print("hhhh");
                    },
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}

class MyButton extends StatelessWidget {
  final text;
  final pressed;
  final width;
  final height;
  const MyButton({Key key, this.text = "", this.pressed = null, this.height = 80, this.width = 80}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: this.height,
      width: this.width,
      child: RaisedButton(
        child: Text(this.text),
        onPressed: this.pressed,
      ),
    );
  }
}
