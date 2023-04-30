import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UserInformationScreen extends StatelessWidget {
  const UserInformationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFD363),
      body: Center(
        child:SafeArea(
          bottom: false,
        child:
        Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset("asset/image/logo.png", width: 80.h,),
            Text("쑥쑥어린이", style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w700),),
            Text("지수의 알림장",style: TextStyle(fontSize: 20.sp,fontWeight: FontWeight.w700),),
            Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30)),
            ),
            height: 500.h,
            width: 360.w,
            child:Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                    padding:EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                child: Row(
                  children: [
                    Icon(Icons.person, size: 35.r,),
                    Text(" 홍지수",style: TextStyle(fontSize: 25.sp,fontWeight: FontWeight.w700),)
                  ],
                ),
                ),
                Container(height: 1.h, width:360.w, color: Colors.black),
                Padding(
                  padding:EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                  child: Row(
                    children: [
                      Icon(Icons.cake, size: 35.r,),
                      Text(" 2016.07.17",style: TextStyle(fontSize: 25.sp,fontWeight: FontWeight.w700),)
                    ],
                  ),
                ),
                Container(height: 1.h, width:360.w, color: Colors.black),
                Padding(
                  padding:EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                  child: Row(
                    children: [
                      Icon(Icons.call, size: 35.r,),
                      Text(" 010-1234-5678",style: TextStyle(fontSize: 25.sp,fontWeight: FontWeight.w700),)
                    ],
                  ),
                ),
                Container(height: 1.h, width:360.w, color: Colors.black),
                Padding(
                  padding:EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                  child: Row(
                    children: [
                      Icon(Icons.school, size: 35.r,),
                      Text(" 명지초등학교",style: TextStyle(fontSize: 25.sp,fontWeight: FontWeight.w700),)
                    ],
                  ),
                ),
                Container(height: 1.h, width:360.w, color: Colors.black),
                Padding(
                  padding:EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                  child: Row(
                    children: [
                      Icon(Icons.email, size: 35.r,),
                      Text(" jisu12@naver.com",style: TextStyle(fontSize: 25.sp,fontWeight: FontWeight.w700),)
                    ],
                  ),
                ),
                Container(height: 1.h, width:360.w, color: Colors.black),
                Padding(
                  padding:EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                  child: Row(
                    children: [
                      Icon(Icons.key, size: 35.r,),
                      Text(" *********",style: TextStyle(fontSize: 30.sp,fontWeight: FontWeight.w500),)
                    ],
                  ),
                ),
                Container(height: 1.h, width:360.w, color: Colors.black),
                SizedBox(height: 10.h,),
                OutlinedButton(
                  onPressed: () {},
                  child: Text("수정하기",
                      style: TextStyle(
                          fontSize: 25.sp, fontWeight: FontWeight.w900)),
                  style: OutlinedButton.styleFrom(
                    elevation: 5 ,
                      minimumSize: Size(250.w, 45.h),
                      shape: const RoundedRectangleBorder(
                          borderRadius:
                          BorderRadius.all(Radius.circular(30))),
                      backgroundColor: Color(0xFFFFD363),
                      primary: Color(0xFF000000),
                      side: BorderSide(
                        // 테두리 바꾸는 속성
                        color: Color(0xFFFDDE8E),
                        width: 2.0,
                      )),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    TextButton(onPressed: (){}, child: Text("로그아웃", style: TextStyle(color: Colors.black, fontSize: 15.sp),)),
                    TextButton(onPressed: (){}, child: Text("탈퇴하기", style: TextStyle(color: Colors.black, fontSize: 15.sp)),)
                  ],
                ),
              //  SizedBox(height: 20.h)
                ElevatedButton(
                    onPressed: () => Navigator.of(context).pop(),
                    child: Text("")),
              ],
            )
            ),
                      ],
                    )

      ),)
    );
  }
}
