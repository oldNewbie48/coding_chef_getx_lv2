import 'package:coding_chef_getx_lv2_220711/view/mypage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GetX LV2',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: MyPage(),
    );
  }
}

