import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:notice_with_me/screen/user/screen/lodding_screen.dart';
import 'package:notice_with_me/screen/moving.dart';
import 'package:shared_preferences/shared_preferences.dart';
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final prefs = await SharedPreferences.getInstance();
  prefs.setString('name', '김수인');
  prefs.setString('email', 'su96in43@naver.com');
  prefs.setString('phone', '010-8335-2425');
  prefs.setString('school', '명지대학교');
  prefs.setString('birth', '2002-04-03');
  runApp(ScreenUtilInit(
      designSize: Size(360, 690),
      builder: (context, child)  {
        return MaterialApp(home: moving());
      }));
}
