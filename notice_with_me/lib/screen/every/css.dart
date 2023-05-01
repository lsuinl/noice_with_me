import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MainSetting extends StatelessWidget {
  final List<Widget> widgets;

  const MainSetting({required this.widgets, Key? key}) : super(key: key);

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
                    children: widgets))));
  }
}

class MainTitle extends StatelessWidget {
  final int widths;
  final int heights;

  const MainTitle({required this.heights, required this.widths, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: Color(0xFFEFB23B),
          borderRadius: BorderRadius.all(Radius.circular(30)),
          border: Border.all(color: Color(0xFFB57D4B), width: 4)),
      height: heights.h,
      width: widths.w,
      child: Text(
        "기린 알림장",
        style: TextStyle(fontSize: 50.sp, fontWeight: FontWeight.w700),
      ),
    );
  }
}
