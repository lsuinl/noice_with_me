import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:notice_with_me/screen/every/css.dart';

class AgreeScreen extends StatelessWidget {
  const AgreeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isChecked = false;
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
              padding: EdgeInsets.symmetric(vertical: 40, horizontal: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "약관동의",
                    style: TextStyle(fontSize: 28.sp),
                  ),
                  SizedBox(height: 18.h),
                  Row(
                    children: [
                      Checkbox(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          value: isChecked,
                          checkColor: Colors.yellow,
                          onChanged: (bool? value) {
                            isChecked = value!;
                          }),
                      Text(
                        "전체동의",
                        style:
                            TextStyle(fontSize: 15.sp, color: Colors.black87),
                      ),
                    ],
                  ),
                  Container(height: 1.h, width: 280.w, color: Colors.black),
                  Row(
                    children: [
                      Checkbox(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          checkColor: Colors.white,
                          value: isChecked,
                          onChanged: (bool? value) {
                            isChecked = value!;
                          }),
                      TextButton(
                        onPressed: () {},
                        child: Text("개인정보 이용 약관 >",
                            style: TextStyle(
                                fontSize: 15.sp, color: Colors.black87)),
                      )
                    ],
                  ),
                  Container(height: 1.h, width: 280.w, color: Colors.black),
                  Row(
                    children: [
                      Checkbox(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          checkColor: Colors.white,
                          value: isChecked,
                          onChanged: (bool? value) {
                            isChecked = value!;
                          }),
                      TextButton(
                          onPressed: () {},
                          child: Text("서비스 이용 약관 >",
                              style: TextStyle(
                                  fontSize: 15.sp, color: Colors.black87)))
                    ],
                  ),
                  Container(height: 1.h, width: 280.w, color: Colors.black),
                  Row(
                    children: [
                      Checkbox(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          checkColor: Colors.white,
                          value: isChecked,
                          onChanged: (bool? value) {
                            isChecked = value!;
                          }),
                      TextButton(
                          onPressed: () {},
                          child: Text("서비스 이용 약관 >",
                              style: TextStyle(
                                  fontSize: 15.sp, color: Colors.black87)))
                    ],
                  ),
                  Container(height: 1.h, width: 280.w, color: Colors.black),
                ],
              )),
        ),
        SizedBox(height: 10.h),
        OutlinedButton(
          onPressed: () {},
          child: Text("다음",
              style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w600)),
          style: OutlinedButton.styleFrom(
              minimumSize: Size(80.w, 33.h),
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              backgroundColor: Colors.white,
              primary: Colors.black,
              side: BorderSide(
                // 테두리 바꾸는 속성
                color: Color(0xFFFF8A3F),
                width: 4.0,
              )),
        ),
        ElevatedButton(
            onPressed: () => Navigator.of(context).pop(), child: Text("")),
      ],
    );
  }
}
