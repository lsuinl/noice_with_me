import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:notice_with_me/screen/home_screen.dart';
import 'package:notice_with_me/screen/user/component/input_text.dart';

import '../../every/css.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  DateTime selectedDate = DateTime.now();
  final TextEditingController inputname = TextEditingController();
  final TextEditingController inputemail = TextEditingController();
  final TextEditingController inputpassword = TextEditingController();
  final TextEditingController inputpasswordcheck = TextEditingController();
  final TextEditingController inputschool = TextEditingController();
  final TextEditingController inputphone = TextEditingController();
   String dropdownValue = '학부모';
  @override
  Widget build(BuildContext context) {
    const List<String> list = <String>['학부모', '자녀'];
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
                  TextField(
                    controller: inputname,
                    decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.black)),
                        hintText: "이름",
                        hintStyle: TextStyle(fontSize: 17.sp)),
                  ),
                  TextField(
                    controller: inputemail,
                    decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.black)),
                        hintText: "이메일",
                        hintStyle: TextStyle(fontSize: 17.sp)),
                  ),
                  TextField(
                    controller: inputpassword,
                    decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.black)),
                        hintText: "비밀번호",
                        hintStyle: TextStyle(fontSize: 17.sp)),
                  ),
                  TextField(
                    controller: inputpasswordcheck,
                    decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.black)),
                        hintText: "비밀번호 확인",
                        hintStyle: TextStyle(fontSize: 17.sp)),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "생년월일",
                            style: TextStyle(fontSize: 17.sp),
                          ),
                          Container(
                            width: 140.w,
                            height: 35.h,
                            child: TextButton(
                              child: Text(
                                '${selectedDate.year}-${selectedDate.month}-${selectedDate.day}',
                                style: TextStyle(fontSize: 15.sp),
                              ),
                              style: TextButton.styleFrom(
                                  primary: Colors.black,
                                  side: BorderSide(
                                    color: Colors.black,
                                  )),
                              onPressed: () {
                                showCupertinoDialog(
                                  context: context,
                                  barrierDismissible: true,
                                  builder: (BuildContext context) {
                                    return Align(
                                      alignment: Alignment.bottomCenter,
                                      child: Container(
                                        color: Color(0xDDFFFFFF), //색상,,
                                        height: 250.0.h,
                                        child: CupertinoDatePicker(
                                          mode: CupertinoDatePickerMode.date,
                                          initialDateTime: selectedDate,
                                          maximumYear: DateTime.now().year,
                                          maximumDate: DateTime.now(),
                                          onDateTimeChanged: (DateTime date) {
                                            setState(() {
                                              selectedDate =
                                                  date; //사용자가 선택한 날짜 저장
                                            });
                                          },
                                        ),
                                      ),
                                    );
                                  },
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "역할",
                            style: TextStyle(fontSize: 17.sp),
                          ),
                          DropdownButton<String>(
                            value: dropdownValue,
                            icon: const Icon(Icons.arrow_drop_down_sharp),
                            elevation: 16,
                            underline: Container(
                              height: 2,
                              color: Colors.black87,
                            ),
                            onChanged: (String? value) {
                              setState(() {
                                dropdownValue = value!;
                              });
                            },
                            items: list.map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value, style: TextStyle(fontSize: 17.sp),),
                              );
                            }).toList(),
                          )
                        ],
                      )
                    ],
                  ),
                  TextField(
                    controller: inputschool,
                    decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.black)),
                        hintText: "소속학교",
                        hintStyle: TextStyle(fontSize: 17.sp)),
                  ),
                  TextField(
                    controller: inputphone,
                    decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.black)),
                        hintText: "전화번호",
                        hintStyle: TextStyle(fontSize: 17.sp)),
                  ),
                ]),
          ),
        ),
        SizedBox(height: 15.h),
        OutlinedButton(
          onPressed: () {
            if(inputname.text==""){
              print("이름을 입력해주세요");
            }
            else if(inputemail.text==""|| inputemail.text.contains("@")==false){
              print("올바른 이메일을 입력해주세요");
            }
            else if(inputpassword.text==""||inputpasswordcheck.text==""||inputpasswordcheck.text!=inputpassword.text){
              print("비밀번호를 다시 확인해주세요");
            }
            else if(inputschool.text==""){
              print("학교를 입력해주세요");
            }
            else if(inputphone.text==""){
              print("전화번호를 입력해주세요");
            }
            else if(DateTime.now().difference(selectedDate).inDays<2700){
              print("초등학생 이상만 이용가능합니다. 정확한 생년월일을 입력해주세요"); //부모. 아이 구분해서..
            }
            else{
              print("완료");
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => HomeScreen()));
            }
            print(inputname.text);
            print(inputemail.text);
            print(inputpassword.text);
            print(inputpasswordcheck.text);
            print(inputschool.text);
            print(inputphone.text);
            print(selectedDate);
            print(dropdownValue);
          },
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
