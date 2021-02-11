import 'package:flutter/material.dart';

class CheckBoxDemo extends StatefulWidget {
  CheckBoxDemo({Key key}) : super(key: key);

  @override
  _CheckBoxDemoState createState() => _CheckBoxDemoState();
}

class _CheckBoxDemoState extends State<CheckBoxDemo> {
  var flag = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CheckBox"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Checkbox(
            value: this.flag,
            activeColor: Colors.red, // 选中颜色
            onChanged: (value) {
              setState(() {
                this.flag = value;
              });
            },
          ),
          Text(this.flag ? "选中" : "未选中"),
          SizedBox(
            height: 20,
          ),
          Divider(), // 分隔线
          CheckboxListTile(
            secondary: Icon(Icons.help),
            title: Text("标题"),
            subtitle: Text("二级标题"),
            value: this.flag,
            onChanged: (value) {
              setState(() {
                this.flag = value;
              });
            },
          )
        ],
      ),
    );
  }
}
