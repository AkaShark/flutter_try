import 'package:flutter/material.dart';

class RegisterFirstPage extends StatelessWidget {
  const RegisterFirstPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("注册-输入手机号"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 40,
            ),
            Text("点击跳转到注册的下一个界面"),
            RaisedButton(
              child: Text("下一步"),
              onPressed: () {
                // Navigator.of(context).pushReplacementNamed('/registerSecond');
                Navigator.of(context).pushNamed('/registerSecond');
              },
            )
          ],
        ),
      ),
    );
  }
}
