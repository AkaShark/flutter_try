import 'package:flutter/material.dart';

class FormPage extends StatelessWidget {
  String title;
  FormPage({this.title = "表单"});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text(this.title),
        ),
        body: ListView(
          children: <Widget>[
            ListTile(
              title: Text("表单"),
            ),
            ListTile(
              title: Text("表单"),
            ),
            ListTile(
              title: Text("表单"),
            ),
            ListTile(
              title: Text("表单"),
            ),
            ListTile(
              title: Text("表单"),
            ),
            ListTile(
              title: Text("表单"),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          child: Text("返回"),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
    );
  }
}
