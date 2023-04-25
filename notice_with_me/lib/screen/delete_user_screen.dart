import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DeleteUserScreen extends StatelessWidget {
  const DeleteUserScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFD363),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(30.r),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "잠깐! 회원 탈퇴를 하시면, \n아이와 함께한 소중한 추억을 \n더 이상 볼 수 없습니다!",
                  style:
                      TextStyle(fontSize: 24.sp, fontWeight: FontWeight.w900),
                ),
                Padding(
                  padding: EdgeInsets.all(20),
                  child: Image.asset(
                    'asset/image/logo.png',
                    height: 200.h,
                  ),
                ),
                Text("탈퇴 시 해당 아이디의 \n모든 콘텐츠가 삭제됩니다.",
                    style: TextStyle(
                        fontSize: 18.sp, fontWeight: FontWeight.w900)),
                Text("\n불편한 점이 있으시다면 말씀해주세요! \n바로바로 고치도록 하겠습니다!",
                    style: TextStyle(
                        fontSize: 18.sp, fontWeight: FontWeight.w900)),
                SizedBox(height: 20.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    OutlinedButton(
                      onPressed: () {},
                      child: Text("탈퇴하기",
                          style: TextStyle(
                              fontSize: 25.sp, fontWeight: FontWeight.w600)),
                      style: OutlinedButton.styleFrom(
                          minimumSize: Size(150.w, 45.h),
                          shape: const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          backgroundColor: Color(0xFFFDDE8E),
                          primary: Color(0xFFFF8A3F),
                          side: BorderSide(
                            // 테두리 바꾸는 속성
                            color: Color(0xFFFF8A3F),
                            width: 5.0,
                          )),
                    ),
                    OutlinedButton(
                      onPressed: () {},
                      child: Text("취소",
                          style: TextStyle(
                              fontSize: 25.sp, fontWeight: FontWeight.w600)),
                      style: OutlinedButton.styleFrom(
                          minimumSize: Size(150.w, 45.h),
                          shape: const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          backgroundColor: Color(0xFFFF8A3F),
                          primary: Colors.white,
                          side: BorderSide(
                            // 테두리 바꾸는 속성
                            color: Color(0xFFFF8A3F),
                            width: 5.0,
                          )),
                    ),
                  ],
                ),
                ElevatedButton(
                    onPressed: () => Navigator.of(context).pop(),
                    child: Text("")),
              ]),
        ),
      ),
    );
  }
}
