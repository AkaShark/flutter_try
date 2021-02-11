import 'package:flutter/material.dart';

class RadioDemo extends StatefulWidget {
  RadioDemo({Key key}) : super(key: key);

  @override
  _RadioDemoState createState() => _RadioDemoState();
}

class _RadioDemoState extends State<RadioDemo> {
  var sex = 1;
  var flag = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Radio"),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Text("男"),
                Radio(
                  value: 1, // 那个value为1那个默认是选中状态
                  onChanged: (value) {
                    setState(() {
                      this.sex = value;
                    });
                  },
                  groupValue: this.sex, // 这个属性一样的话说明是一组
                ),
                SizedBox(
                  width: 20,
                ),
                Text("女"),
                Radio(
                  value: 0,
                  onChanged: (value) {
                    setState(() {
                      this.sex = value;
                    });
                  },
                  groupValue: this.sex,
                ),
              ],
            ),
            Row(
              children: <Widget>[Text(this.sex == 1 ? "男" : "女")],
            ),
            SizedBox(
              width: 40,
            ),
            RadioListTile(
              value: 1,
              onChanged: (value) {
                setState(() {
                  this.sex = value;
                });
              },
              groupValue: this.sex,
              title: Text("男"),
              subtitle: Text("这是二级标题"),
              secondary: Icon(Icons.help),
            ),
            SizedBox(
              height: 40,
            ),
            Switch(
              value: flag,
              onChanged: (value) {
                setState(() {
                  this.flag = value;
                });
              },
            )
          ],
        ),
      ),
    );
  }
}
