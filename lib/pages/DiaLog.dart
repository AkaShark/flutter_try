// import 'dart:async'; // timer
// import 'package:flutter/material.dart';
// import 'package:fluttertoast/fluttertoast.dart';
// import '../Components/MyDialog.dart';

// class DiaLogPage extends StatefulWidget {
//   DiaLogPage({Key key}) : super(key: key);

//   @override
//   _DiaLogPageState createState() => _DiaLogPageState();
// }

// class _DiaLogPageState extends State<DiaLogPage> {
//   _alterDialog() async {
//     var res = await showDialog(
//         context: context,
//         builder: (context) {
//           return AlertDialog(
//             title: Text("提示信息"),
//             content: Text("您确定要删除么?"),
//             actions: <Widget>[
//               FlatButton(
//                 child: Text("取消"),
//                 onPressed: () {
//                   print("取消");
//                   Navigator.pop(context, 'cancle');
//                 },
//               ),
//               FlatButton(
//                 child: Text("确定"),
//                 onPressed: () {
//                   Navigator.pop(context, 'ok');
//                 },
//               )
//             ],
//           );
//         });
//     print(res);
//   }

//   _simpleDialog() {
//     showDialog(
//       context: context,
//       builder: (context) {
//         return SimpleDialog(
//           title: Text("选择内容"),
//           children: <Widget>[
//             SimpleDialogOption(
//               child: Text("A"),
//               onPressed: () {
//                 print("optionA");
//                 Navigator.pop(context, "A");
//               },
//             ),
//             Divider(),
//             SimpleDialogOption(
//               child: Text("B"),
//               onPressed: () {
//                 print("optionB");
//                 Navigator.pop(context, "B");
//               },
//             ),
//             Divider(),
//             SimpleDialogOption(
//               child: Text("C"),
//               onPressed: () {
//                 print("optionC");
//                 Navigator.pop(context, "C");
//               },
//             ),
//           ],
//         );
//       },
//     );
//   }

//   _modelBottomSheet() {
//     showModalBottomSheet(
//         context: context,
//         builder: (context) {
//           return Container(
//             height: 200,
//             child: Column(
//               children: <Widget>[
//                 ListTile(
//                   title: Text("分享A"),
//                   onTap: () {},
//                 ),
//                 Divider(),
//                 ListTile(
//                   title: Text("分享B"),
//                   onTap: () {},
//                 ),
//                 Divider(),
//                 ListTile(
//                   title: Text("分享C"),
//                   onTap: () {},
//                 ),
//               ],
//             ),
//           );
//         });
//   }

//   _toast() {
//     Fluttertoast.showToast(
//         msg: "This is Center Short Toast",
//         toastLength: Toast.LENGTH_SHORT,
//         gravity: ToastGravity.CENTER,
//         timeInSecForIosWeb: 1,
//         backgroundColor: Colors.red,
//         textColor: Colors.white,
//         fontSize: 16.0);
//   }

//   _showTimer(context) {
//     var timer;
//     timer = Timer.periodic(Duration(milliseconds: 3500), (t) {
//       print("执行");
//       Navigator.pop(context);
//       t.cancel(); // 取消定时器
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     _showTimer(context);
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Dialog"),
//       ),
//       body: Column(
//         children: <Widget>[
//           RaisedButton(
//             child: Text("alert弹出AlertDialog"),
//             onPressed: _alterDialog,
//           ),
//           SizedBox(
//             height: 20,
//           ),
//           RaisedButton(
//             child: Text("select弹出框-SimpleDialog"),
//             onPressed: _simpleDialog,
//           ),
//           SizedBox(
//             height: 20,
//           ),
//           RaisedButton(
//             child: Text("ActionSheet-showModalBottomSheet"),
//             onPressed: _modelBottomSheet,
//           ),
//           SizedBox(
//             height: 20,
//           ),
//           RaisedButton(
//             child: Text("toast-fluttertoast第三方库"),
//             onPressed: _toast,
//           ),
//           SizedBox(
//             height: 20,
//           ),
//           RaisedButton(
//               child: Text("自定义Dialog"),
//               onPressed: () {
//                 showDialog(
//                   context: context,
//                   builder: (context) {
//                     return MyDialog(
//                       title: "关于我们",
//                       content: "内容",
//                     );
//                   },
//                 );
//               }),
//         ],
//       ),
//     );
//   }
// }
