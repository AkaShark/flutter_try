import 'package:flutter/material.dart';
import 'package:flutter_first/pages/AppBarPage.dart';
import 'package:flutter_first/pages/Button.dart';
import 'package:flutter_first/pages/CheckBox.dart';
import 'package:flutter_first/pages/DioPage.dart';
// import 'package:flutter_first/pages/DiaLog.dart';
// import 'package:flutter_first/pages/DatePickerDemo.dart';
import 'package:flutter_first/pages/Form.dart';
import 'package:flutter_first/pages/FromeDemo.dart';
import 'package:flutter_first/pages/Product.dart';
import 'package:flutter_first/pages/Radio.dart';
import 'package:flutter_first/pages/Search.dart';
import 'package:flutter_first/pages/TabBarController.dart';
import 'package:flutter_first/pages/Tabs.dart';
import 'package:flutter_first/pages/TextField.dart';
import 'package:flutter_first/pages/User.dart';
import 'package:flutter_first/pages/users/RegisterFirst.dart';
import 'package:flutter_first/pages/users/RegisterThird.dart';
import '../pages/users/Login.dart';
import '../pages/users/RegisterSecond.dart';

final routs = {
  '/': (context, {arguments}) => Tabs(), // 根路由
  '/from': (context, {arguments}) => FormPage(),
  '/product': (context) => ProductPage(),
  '/search': (context, {arguments}) => SearchPage(arguments: arguments),
  '/login': (context) => LoginPage(),
  '/registerSecond': (context) => RegisterSecondPage(),
  '/registerFirst': (context) => RegisterFirstPage(),
  '/registerThird': (context) => RegisterThirdPage(),
  '/appBar': (context) => AppBarPage(),
  '/tabBarControllerPage': (context) => TabBarControllerPage(),
  '/user': (context) => UserPage(),
  '/btn': (context) => ButtonPages(),
  '/textField': (context) => TextFieldDemoPage(),
  '/checkBox': (context) => CheckBoxDemo(),
  '/radio': (context) => RadioDemo(),
  '/form': (context) => FromDemoPage(),
  '/dio': (context) => DioPage(),
  // '/datePicker': (context) => DatePickerDemoState(),
  // '/dialog': (context) => DiaLogPage(),
};
//配置路由传参数
var onGenerateRoute = (RouteSettings settings) {
  final String name = settings.name;
  print(name);
  final Function pageContenBuilder = routs[name];
  if (pageContenBuilder != null) {
    if (settings.arguments != null) {
      print(settings.arguments);
      final Route route =
          MaterialPageRoute(builder: (context) => pageContenBuilder(context, arguments: settings.arguments));
      return route;
    } else {
      final Route route = MaterialPageRoute(builder: (context) => pageContenBuilder(context));
      return route;
    }
  }
};
