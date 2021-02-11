import 'package:flutter/material.dart';

class FromDemoPage extends StatefulWidget {
  @override
  _FromDemoPageState createState() => _FromDemoPageState();
}

class _FromDemoPageState extends State<FromDemoPage> {
  String info;
  String name;
  int sex = 1;
  List hobby = [
    {
      "checked": true,
      "title": "吃饭",
    },
    {
      "checked": true,
      "title": "睡觉",
    },
    {
      "checked": true,
      "title": "Coding",
    }
  ];

  void _sexChange(value) {
    setState(() {
      this.sex = value;
    });
  }

  List<Widget> _getHobby() {
    List<Widget> tempList = [];
    for (var i = 0; i < this.hobby.length; i++) {
      tempList.add(Text(this.hobby[i]["title"]));
      tempList.add(Checkbox(
        value: this.hobby[i]["checked"],
        onChanged: (value) {
          setState(() {
            this.hobby[i]["checked"] = value;
          });
        },
      ));
    }
    return tempList;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("学员信息注册表"),
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            TextField(
              decoration: InputDecoration(
                hintText: "输入用户信息",
              ),
              onChanged: (value) {
                setState(() {
                  this.name = value;
                });
              },
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: <Widget>[
                Text("男"),
                Radio(
                  value: 1,
                  onChanged: this._sexChange,
                  groupValue: this.sex,
                ),
                SizedBox(
                  width: 20,
                ),
                Text("女"),
                Radio(
                  value: 2,
                  onChanged: this._sexChange,
                  groupValue: this.sex,
                ),
              ],
            ),
            SizedBox(
              height: 40,
            ),

            // 爱好
            Wrap(
              children: this._getHobby(),
            ),
            TextField(
              maxLength: 4,
              decoration: InputDecoration(hintText: "描述信息", border: OutlineInputBorder()),
            ),

            Container(
              width: double.infinity,
              height: 40,
              child: RaisedButton(
                child: Text("提交信息"),
                onPressed: () {
                  print(this.sex);
                  print(this.name);
                  print(this.hobby);
                },
                color: Theme.of(context).accentColor,
                textColor: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}
