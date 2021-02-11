// import 'package:flutter/material.dart';
// import 'package:date_format/date_format.dart';
// import 'package:flutter_cupertino_date_picker/flutter_cupertino_date_picker.dart';

// class DatePickerDemoState extends StatefulWidget {
//   DatePickerDemoState({Key key}) : super(key: key);

//   @override
//   _DatePickerDemoStateState createState() => _DatePickerDemoStateState();
// }

// class _DatePickerDemoStateState extends State<DatePickerDemoState> {
//   DateTime _nowDate = DateTime.now();
//   var _nowTime = TimeOfDay(hour: 12, minute: 12);
//   @override
//   void initState() {
//     super.initState();
//     // print(now.microsecondsSinceEpoch); // 转成时间戳
//     // print(DateTime.fromMillisecondsSinceEpoch(1612945632084216));
//     print(formatDate(DateTime.now(), [yyyy, '年', mm, '月', d, '日']));
//   }

//   // async await 获取异步方法数据
//   void _showDatePicker() async {
//     var result = await showDatePicker(
//       context: context,
//       initialDate: _nowDate,
//       firstDate: DateTime(1980),
//       lastDate: DateTime(2100),
//     );

//     setState(() {
//       this._nowDate = result;
//     });
//     // print(result);

//     // showDatePicker(
//     //   context: context,
//     //   initialDate: _nowDate,
//     //   firstDate: DateTime(1980),
//     //   lastDate: DateTime(2100),
//     // ).then((result) {
//     //   // 获取异步方法的数据
//     //   print(result);
//     // });
//   }

//   void _showTimePicker() {
//     showTimePicker(
//       context: context,
//       initialTime: _nowTime,
//     ).then((time) {
//       setState(() {
//         this._nowTime = _nowTime;
//       });
//     });
//   }

//   void _show() {
//     // DatePicker.showDatePicker(context,
//     //     pickerTheme: DateTimePickerTheme(showTitle: true, confirm: Text("确定"), cancel: Text("取消")),
//     //     minDateTime: DateTime());
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("日期选择器"),
//       ),
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: <Widget>[
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: <Widget>[
//               InkWell(
//                 // 类似于按钮组件
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: <Widget>[
//                     Text("${formatDate(this._nowDate, [yyyy, '年', mm, '月', d, '日'])}"),
//                     Icon(Icons.arrow_drop_down)
//                   ],
//                 ),
//                 onTap: () {
//                   this._showDatePicker();
//                 },
//               ),
//               InkWell(
//                 // 类似于按钮组件
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: <Widget>[
//                     Text("${this._nowTime.format(context)}"),
//                   ],
//                 ),
//                 onTap: () {
//                   this._showTimePicker();
//                 },
//               )
//             ],
//           ),
//           SizedBox(height: 50),
//           InkWell(
//             // 类似于按钮组件
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: <Widget>[
//                 Text("111"),
//               ],
//             ),
//             onTap: () {
//               _show();
//             },
//           )
//         ],
//       ),
//     );
//   }
// }
