import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:notice_with_me/screen/home_mainbutton.dart';

import 'every/css.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MainSetting(widgets: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            "2023-03-21(화)",
            style: TextStyle(fontSize: 25.sp, fontWeight: FontWeight.w800),
          ),
          Image.asset(
            "asset/image/logo.png",
            width: 50,
            fit: BoxFit.fill,
          )
        ],
      ),
      Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10), topRight: Radius.circular(10)),
          ),
          height: 130.h,
          width: 320.w,
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  "1. 색연필 가져오기",
                  style: TextStyle(fontSize: 20.sp),
                ),
                Text(
                  "2. 가위 가져오기",
                  style: TextStyle(fontSize: 20.sp),
                ),
                Text(
                  "3. 받아쓰기 숙제하기",
                  style: TextStyle(fontSize: 20.sp),
                )
              ],
            ),
          )),
      Container(height: 4.h, width: 320.w, color: Color(0xFFFC9F04)),
      Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(10),
                  bottomLeft: Radius.circular(10))),
          height: 130.h,
          width: 320.w,
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  "1. 색연필 가져오기",
                  style: TextStyle(fontSize: 20.sp),
                ),
                Text(
                  "2. 가위 가져오기",
                  style: TextStyle(fontSize: 20.sp),
                ),
                Text(
                  "3. 받아쓰기 숙제하기",
                  style: TextStyle(fontSize: 20.sp),
                )
              ],
            ),
          )),
      OutlinedButton(
        onPressed: () {},
        child: Text("오늘의 숙제 내주기",
            style: TextStyle(fontSize: 25.sp, fontWeight: FontWeight.w900)),
        style: OutlinedButton.styleFrom(
            elevation: 5,
            minimumSize: Size(320.w, 45.h),
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(30))),
            backgroundColor: Color(0xFFFFD363),
            primary: Color(0xFF000000),
            side: BorderSide(
              // 테두리 바꾸는 속성
              color: Color(0xFFFDDE8E),
              width: 2.0,
            )),
      ),
      SizedBox(height: 10.h),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          MainButton(buttontext: "질문함"),
          MainButton(buttontext: "도장판"),
        ],
      ),
      SizedBox(height: 20.h),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          MainButton(buttontext: "알림장"),
          MainButton(buttontext: "프로필관리"),
        ],
      ),
      ElevatedButton(
          onPressed: () => Navigator.of(context).pop(), child: Text("")),
    ]);
  }
}
