import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoddingScreen extends StatelessWidget {
  const LoddingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFFFD363),
        body: Center(
            child: Padding(
              padding: EdgeInsets.all(10.r),
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
                    height: 80.h,
                    width: 300.w,
                    child:
                    Text(
                      "기린 알림장",
                      style: TextStyle(fontSize: 50.sp, fontWeight: FontWeight.w700),
                    ),
                  ),
                  SizedBox(height: 15.h),
                  Text(
                    "아이와 소통할 수 있는 알림장 도우미어플",
                    style:
                    TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w400, color: Colors.black87),
                  ),
                  SizedBox(height: 30.h),
                  Image.asset('asset/image/logo.png', height: 240.h,),
                  SizedBox(height: 50.h),
                  OutlinedButton(
                    onPressed: () {},
                    child:
                    Text("시작하기", style: TextStyle(fontSize: 25.sp, fontWeight: FontWeight.w600)),
                    style: OutlinedButton.styleFrom(
                        minimumSize: Size(180.w, 42.h),
                        shape: const RoundedRectangleBorder(
                            borderRadius:
                            BorderRadius.all(Radius.circular(10))),
                        backgroundColor: Colors.white,
                        primary: Colors.black,
                        side: BorderSide(
                          // 테두리 바꾸는 속성
                          color: Color(0xFFFF8A3F),
                          width: 6.0,
                        )),
                  ),
                  ElevatedButton(onPressed: ()=>Navigator.of(context).pop(), child: Text(""))
                ],
              ),
            )));
  }
}
