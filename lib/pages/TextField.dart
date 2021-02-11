import 'package:flutter/material.dart';

class TextFieldDemoPage extends StatefulWidget {
  TextFieldDemoPage({Key key}) : super(key: key);

  @override
  _TextFieldDemoPageState createState() => _TextFieldDemoPageState();
}

class _TextFieldDemoPageState extends State<TextFieldDemoPage> {
  var username = new TextEditingController();
  var passwprd;
  @override
  void initState() {
    super.initState();
    username.text = "初始值";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("表单"),
      ),
      body: Column(
        children: <Widget>[
          TextField(
            decoration: InputDecoration(hintText: "请输入用户名"),
            controller: this.username, // 绑定的TextEditingController
            onChanged: (value) {
              setState(() {
                this.username.text = value;
              });
            },
          ),
          SizedBox(
            height: 20,
          ),
          TextField(
            obscureText: true,
            decoration: InputDecoration(hintText: "密码", labelText: "密码"),
            onChanged: (value) {
              setState(() {
                this.passwprd = value;
              });
            },
          ),
          SizedBox(
            height: 40,
          ),
          Container(
            child: RaisedButton(
              child: Text("点击"),
              onPressed: () {
                print("用户名:${this.username.text}, 密码:${this.passwprd}");
                // print(this.username.text);
                // print(passwprd);
              },
              color: Theme.of(context).accentColor,
              textColor: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}

class TextDemo extends StatelessWidget {
  const TextDemo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Column(
        children: <Widget>[
          TextField(
            // obscureText: true, // 是否为密码框
            decoration: InputDecoration(
                // hintText: "请输入搜索内容",
                // border: OutlineInputBorder(),
                labelText: "密码", // 浮动label
                icon: Icon(Icons.usb)),
            // maxLines: 2, // 多行文本框
            // maxLength: 3,// 最多输入的文字数
          ),
        ],
      ),
    );
  }
}
