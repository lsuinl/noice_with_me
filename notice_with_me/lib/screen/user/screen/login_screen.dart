import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:notice_with_me/screen/every/css.dart';
import 'package:notice_with_me/screen/user/screen/register.dart';

import '../component/input_text.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextEditingController inputid=TextEditingController();
    final TextEditingController inputpassword=TextEditingController();

    return MainSetting(
      widgets: [
        MainTitle(heights: 60, widths: 260),
        SizedBox(height: 20.h),
        Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(30)),
          ),
          height: 270.h,
          width: 320.w,
          child: Padding(
            padding: EdgeInsets.only(left: 40, right: 40, top: 30, bottom: 20),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                "로그인",
                style: TextStyle(fontSize: 30.sp, fontWeight: FontWeight.w700),
              ),
              SizedBox(height: 20.h),
              TextField(
                controller: inputid,
    decoration: InputDecoration(
    enabledBorder:
    UnderlineInputBorder(borderSide: BorderSide(color: Colors.black)),
    hintText: "아이디",
    hintStyle: TextStyle(fontSize: 17.sp)),
    ),
              SizedBox(height: 50.h),
    TextField(
      controller: inputpassword,
    decoration: InputDecoration(
    enabledBorder:
    UnderlineInputBorder(borderSide: BorderSide(color: Colors.black)),
    hintText: "비밀번호",
    hintStyle: TextStyle(fontSize: 17.sp)),
    ),
              SizedBox(height: 20.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  OutlinedButton(
                    onPressed: () {
                      print(inputid.text);
                      print(inputpassword.text);
                    },
                    child: Text("로그인",
                        style: TextStyle(
                            fontSize: 16.sp, fontWeight: FontWeight.w600)),
                    style: OutlinedButton.styleFrom(
                        minimumSize: Size(82.w, 27.h),
                        shape: const RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        backgroundColor: Colors.white,
                        primary: Colors.black,
                        side: BorderSide(
                          // 테두리 바꾸는 속성
                          color: Color(0xFFFF8A3F),
                          width: 5.0,
                        )),
                  ),
                  SizedBox(width: 10.w),
                  OutlinedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => RegisterScreen()));
                    },
                    child: Text("회원가입",
                        style: TextStyle(
                            fontSize: 16.sp, fontWeight: FontWeight.w600)),
                    style: OutlinedButton.styleFrom(
                        minimumSize: Size(82.w, 27.h),
                        shape: const RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        backgroundColor: Colors.white,
                        primary: Colors.black,
                        side: BorderSide(
                          // 테두리 바꾸는 속성
                          color: Color(0xFFFF8A3F),
                          width: 5.0,
                        )),
                  ),
                ],
              )
            ]),
          ),
        ),
        ElevatedButton(
            onPressed: () => Navigator.of(context).pop(), child: Text("")),
      ],
    );
  }
}
