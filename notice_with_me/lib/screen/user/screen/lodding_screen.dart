import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:notice_with_me/screen/every/css.dart';
import 'package:notice_with_me/screen/home_screen.dart';
import 'package:notice_with_me/screen/user/screen/login_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoddingScreen extends StatelessWidget {
  const LoddingScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MainSetting(
      widgets: [
        MainTitle(widths: 320, heights: 80),
        SizedBox(height: 15.h),
        Text(
          "아이와 소통할 수 있는 알림장 도우미어플",
          style: TextStyle(
              fontSize: 18.sp,
              fontWeight: FontWeight.w400,
              color: Colors.black87),
        ),
        SizedBox(height: 30.h),
        Image.asset(
          '/Users/kimsu-in/Desktop/icecream/sw/notice_with_me/asset/image/mainlogo.png',
          height: 240.h,
        ),
        SizedBox(height: 50.h),
        OutlinedButton(
          onPressed: () async {
            final SharedPreferences prefs = await SharedPreferences.getInstance();
            final String? nema= await prefs.getString('name');
            if(nema==null){ //저장된 이름이 없음=로그인, 또는 회원가입.
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => LoginScreen()));
            }
            else{
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => HomeScreen()));
            }
          },
          child: Text("시작하기",
              style: TextStyle(fontSize: 25.sp, fontWeight: FontWeight.w600)),
          style: OutlinedButton.styleFrom(
              minimumSize: Size(180.w, 42.h),
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              backgroundColor: Colors.white,
              primary: Colors.black,
              side: BorderSide(
                // 테두리 바꾸는 속성
                color: Color(0xFFFF8A3F),
                width: 6.0,
              )),
        ),
        ElevatedButton(
            onPressed: () => Navigator.of(context).pop(), child: Text(""))
      ],
    );
  }
}
