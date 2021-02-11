import 'package:flutter/material.dart';

class RegisterSecondPage extends StatelessWidget {
  const RegisterSecondPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text("第二步-注册"),
        ),
        body: ListView(
          children: <Widget>[
            ListTile(
              title: Text("列表"),
            ),
            ListTile(
              title: Text("列表"),
            ),
            ListTile(
              title: Text("列表"),
            ),
            ListTile(
              title: Text("列表"),
            ),
            ListTile(
              title: Text("列表"),
            ),
            // RaisedButton(
              // child: Text("下一步"),
              // onPressed: () {
                // Navigator.pushNamed(context, '/registerThird');
                // 替换路由
                // Navigator.of(context).pushReplacementNamed('/registerThird');
              // },
            // ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.pushNamed(context, '/registerThird');
          },
          child: Icon(Icons.navigation),
          backgroundColor: Theme.of(context).accentColor,
        ),
      ),
    ));
  }
}
