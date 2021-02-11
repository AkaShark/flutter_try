import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class DioPage extends StatefulWidget {
  DioPage({Key key}) : super(key: key);

  @override
  _DioPageState createState() => _DioPageState();
}

class _DioPageState extends State<DioPage> {
  List list = [];

  _getData() async {
    var dio = Dio();
    Response response = await dio.get('http://a.itying.com/api/productlist');
    print(response.data is Map);
    setState(() {
      this.list = response.data["result"];
    });
  }

  void initState() {
    super.initState();
    this._getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dio"),
      ),
      body: this.list.length > 0
          ? ListView(
              children: this.list.map((value) {
                return ListTile(
                  title: Text(value["title"]),
                );
              }).toList(),
            )
          : Text("Loding"),
    );
  }
}
