import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class InputText extends StatelessWidget {
  final String hinttexts;

  const InputText({required this.hinttexts, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          enabledBorder:
              UnderlineInputBorder(borderSide: BorderSide(color: Colors.black)),
          hintText: hinttexts,
          hintStyle: TextStyle(fontSize: 17.sp)),
    );
  }
}
