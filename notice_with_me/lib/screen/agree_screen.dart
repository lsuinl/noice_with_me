import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AgreeScreen extends StatelessWidget {
  const AgreeScreen({Key? key}) : super(key: key);

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
            width: 280.w,
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
            child:Column(
              children: [
                Text("약관동의"),
                Row(
                  children: [

                  ],
                ),
              ],
            )
          ),
              OutlinedButton(
                onPressed: () {},
                child:
                Text("다음", style: TextStyle(fontSize: 15.sp, fontWeight: FontWeight.w600)),
                style: OutlinedButton.styleFrom(
                    minimumSize: Size(80.w, 25.h),
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
              ElevatedButton(onPressed: ()=>Navigator.of(context).pop(), child: Text("")),
            ],
          ),
        ),
      ),
    );
  }
}
