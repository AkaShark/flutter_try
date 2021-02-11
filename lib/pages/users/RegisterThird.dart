import 'package:flutter/material.dart';
import '../Tabs1.dart';

class RegisterThirdPage extends StatefulWidget {
  RegisterThirdPage({Key key}) : super(key: key);

  @override
  _RegisterThirdPageState createState() => _RegisterThirdPageState();
}

class _RegisterThirdPageState extends State<RegisterThirdPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("第三步-输入手机号"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 40,
            ),
            Text("点击跳转到注册的下一个界面"),
            RaisedButton(
              child: Text("完成"),
              onPressed: () {
                // 返回根 将前面的所有的页面栈信息全部置为null 同时创建要返回的页面
                Navigator.of(context).pushAndRemoveUntil(
                  new MaterialPageRoute(builder: (context) => new Tabs(index: 2,)),
                  (route) => route == null
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
