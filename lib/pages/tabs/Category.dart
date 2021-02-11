import 'package:flutter/material.dart';
import '../Form.dart';

class CategoryPage extends StatefulWidget {
  CategoryPage({Key key}) : super(key: key);

  @override
  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Row(
            children: <Widget>[
              Expanded(
                child: TabBar(
                  indicatorSize: TabBarIndicatorSize.label,
                  tabs: <Widget>[
                    Tab(text: "热销",),
                    Tab(text: "推荐",)
                  ],
                ),
              ),
            ],
          )
        ),
        body: TabBarView(
          children: <Widget>[
            Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                child: Text("跳转"),
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context)=>FormPage(title: "哇咔咔",)
                    )
                  );
                },
                color: Theme.of(context).accentColor,
                textTheme: ButtonTextTheme.primary,
              )
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                child: Text("跳转"),
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context)=>FormPage(title: "哇咔咔",)
                    )
                  );
                },
                color: Theme.of(context).accentColor,
                textTheme: ButtonTextTheme.primary,
              )
            ],
          )
          ],
        ),
      ),
    );
  }
}

/*
Container(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        RaisedButton(
          child: Text("跳转"),
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context)=>FormPage(title: "哇咔咔",)
              )
            );
          },
          color: Theme.of(context).accentColor,
          textTheme: ButtonTextTheme.primary,
        )
      ],
    ));
*/
