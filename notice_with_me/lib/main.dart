import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:notice_with_me/screen/lodding_screen.dart';
import 'package:notice_with_me/screen/moving.dart';

void main() {
  runApp(ScreenUtilInit(
      designSize: Size(360, 690),
      builder: (context, child) {
        return MaterialApp(home: moving());
      }));
}
