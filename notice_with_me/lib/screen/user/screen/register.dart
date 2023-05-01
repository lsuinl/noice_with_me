import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:notice_with_me/screen/user/component/input_text.dart';

import '../../every/css.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const List<String> list = <String>['One', 'Two', 'Three', 'Four'];
    String dropdownValue = list.first;
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
          height: 370.h,
          width: 320.w,
          child: Padding(
            padding: EdgeInsets.only(left: 40, right: 40, top: 30, bottom: 20),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InputText(hinttexts: "이름"),
                  InputText(hinttexts: "이메일"),
                  InputText(hinttexts: "비밀번호"),
                  InputText(hinttexts: "비밀번호 확인"),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Column(
                        children: [
                          Text(
                            "생년월일",
                            style: TextStyle(fontSize: 17.sp),
                          ),
                          DropdownButton<String>(
                            value: dropdownValue,
                            icon: const Icon(Icons.arrow_downward),
                            elevation: 16,
                            underline: Container(
                              height: 2,
                              color: Colors.black87,
                            ),
                            onChanged: (String? value) {
                              // This is called when the user selects an item.
                              dropdownValue = value!;
                            },
                            items: list
                                .map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                          )
                        ],
                      ),
                      SizedBox(width: 50.w),
                      Column(
                        children: [
                          Text(
                            "역할",
                            style: TextStyle(fontSize: 17.sp),
                          ),
                          DropdownButton<String>(
                            value: dropdownValue,
                            icon: const Icon(Icons.arrow_downward),
                            elevation: 16,
                            underline: Container(
                              height: 2,
                              color: Colors.black87,
                            ),
                            onChanged: (String? value) {
                              // This is called when the user selects an item.
                              dropdownValue = value!;
                            },
                            items: list
                                .map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                          )
                        ],
                      )
                    ],
                  ),
                  InputText(hinttexts: "소속학교"),
                  InputText(hinttexts: "전화번호"),
                ]),
          ),
        ),
        SizedBox(height: 15.h),
        OutlinedButton(
          onPressed: () {},
          child: Text("회원가입",
              style: TextStyle(fontSize: 24.sp, fontWeight: FontWeight.w600)),
          style: OutlinedButton.styleFrom(
              minimumSize: Size(82.w, 35.h),
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              backgroundColor: Colors.white,
              primary: Colors.black,
              side: BorderSide(
                // 테두리 바꾸는 속성
                color: Color(0xFFFF8A3F),
                width: 5.0,
              )),
        ),
        ElevatedButton(
            onPressed: () => Navigator.of(context).pop(), child: Text("")),
      ],
    );
  }
}
