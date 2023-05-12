import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:notice_with_me/screen/home_screen.dart';
import 'package:notice_with_me/screen/user/screen/lodding_screen.dart';
import 'package:notice_with_me/screen/user/screen/login_screen.dart';
import 'package:notice_with_me/screen/user/screen/register.dart';
import 'package:notice_with_me/screen/perform/user_information_screen.dart';

class moving extends StatelessWidget {
  const moving({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        children: [
          SizedBox(height:100.h),
          ElevatedButton(
              onPressed: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => LoddingScreen())),
              child: Text("로딩화면")),
          ElevatedButton(
              onPressed: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => LoginScreen())),
              child: Text("로그인화면")),
          ElevatedButton(
              onPressed: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => RegisterScreen())),
              child: Text("회원가입")),
          ElevatedButton(
              onPressed: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => UserInformationScreen())),
              child: Text("유저정보")),
          ElevatedButton(
              onPressed: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => HomeScreen())),
              child: Text("홈화면")),
        ],
      ),
    ));
  }
}
