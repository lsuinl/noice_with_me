import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFD363),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(20.r),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Color(0xFFEFB23B),
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                    border: Border.all(color: Color(0xFFB57D4B), width: 4)),
                height: 60.h,
                width: 260.w,
                child: Text(
                  "기린 알림장",
                  style:
                      TextStyle(fontSize: 40.sp, fontWeight: FontWeight.w700),
                ),
              ),
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
                  padding: EdgeInsets.only(left: 40,right: 40,top:30,bottom: 20),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                    Text(
                      "로그인",
                      style: TextStyle(
                          fontSize: 30.sp, fontWeight: FontWeight.w700),
                    ),
                    SizedBox(height: 20.h),
                    TextField(
                      decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.black)),
                        hintText: "아이디",
                          hintStyle: TextStyle(fontSize: 17.sp)
                      ),
                    ),
                    SizedBox(height: 50.h),
                    TextField(
                      decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.black)),
                        hintText: "비밀번호",
                        hintStyle: TextStyle(fontSize: 17.sp)
                      ),
                    ),
                    SizedBox(height: 20.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        OutlinedButton(
                          onPressed: () {},
                          child: Text("로그인",
                              style: TextStyle(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w600)),
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
                          onPressed: () {},
                          child: Text("회원가입",
                              style: TextStyle(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w600)),
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
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(onPressed: () {}, child: Text("d")),
                  TextButton(onPressed: () {}, child: Text("d")),
                  TextButton(onPressed: () {}, child: Text("d")),
                ],
              ),
              ElevatedButton(
                  onPressed: () => Navigator.of(context).pop(),
                  child: Text("")),
            ],
          ),
        ),
      ),
    );
  }
}
