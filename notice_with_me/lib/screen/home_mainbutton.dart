import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MainButton extends StatelessWidget {
  final String buttontext;
  final VoidCallback movingscreen;
  final String image;

  const MainButton({
    required this.buttontext,
    required this.movingscreen,
    required this.image,
    Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(onPressed: movingscreen,
        style: TextButton.styleFrom(
          minimumSize: Size.zero,
          padding: EdgeInsets.zero
        ),
        child:
      Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(15)),
            border: Border.all(width: 2, color: Colors.black12)),
        height: 100.h,
        width: 155.w,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset('asset/image/${image}.png', width: 70.w,),
            Text(
              buttontext,
              style: TextStyle(fontSize: 20.sp,color: Colors.black),
            )
          ],
        )));
  }
}
