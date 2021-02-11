import 'dart:convert'; // json转换库
import 'package:http/http.dart' as http;

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String _content = "";
  @override
  void initState() {
    super.initState();
    Map userInfo = {
      "username": "张三",
      "age": 20,
    };
    // json decode json => map
    // json encode map => json
  }

  _getData() async {
    var apiUrl = "http://a.itying.com/api/productlist";
    var result = await http.get(apiUrl);
    print(result);
    if (result.statusCode == 200) {
      print(json.decode(result.body));
      setState(() {
        this._content = json.decode(result.body)[''];
      });
    } else {
      print(result.statusCode);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(this._content),
          RaisedButton(
            child: Text("跳转到搜素页面"),
            onPressed: () {
              Navigator.pushNamed(context, '/datePicker');
            },
            color: Theme.of(context).accentColor,
            textTheme: ButtonTextTheme.primary,
          ),
          SizedBox(
            height: 200,
          ),
          RaisedButton(
            child: Text("顶部导航栏自定义"),
            onPressed: () {
              // 跳转到搜索界面
              // Navigator.of(context).push(MaterialPageRoute(
              //   builder: (context) => SearchPage(),
              // ));
              // Navigator.of(context).push(MaterialPageRoute(
              //   builder: (context) => AppBarPage()
              // ));
              Navigator.pushNamed(context, '/btn');
            },
            color: Theme.of(context).accentColor,
            textTheme: ButtonTextTheme.primary,
          ),
          RaisedButton(
            child: Text("学员登记系统"),
            onPressed: () {
              Navigator.pushNamed(context, '/dialog');
            },
            color: Theme.of(context).accentColor,
            textTheme: ButtonTextTheme.primary,
          ),
          RaisedButton(
            child: Text("get请求"),
            onPressed: _getData,
            color: Theme.of(context).accentColor,
            textTheme: ButtonTextTheme.primary,
          ),
          RaisedButton(
            child: Text("post请求"),
            onPressed: () {
              Navigator.pushNamed(context, '/dialog');
            },
            color: Theme.of(context).accentColor,
            textTheme: ButtonTextTheme.primary,
          ),
          RaisedButton(
            child: Text("Dio 渲染数据演示demo"),
            onPressed: () {
              Navigator.pushNamed(context, '/dio');
            },
            color: Theme.of(context).accentColor,
            textTheme: ButtonTextTheme.primary,
          ),
        ],
      ),
    );
  }
}
