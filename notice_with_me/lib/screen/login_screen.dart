import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LodinScreen extends StatefulWidget {
  const LodinScreen({Key? key}) : super(key: key);

  @override
  State<LodinScreen> createState() => _LodinScreenState();
}

class _LodinScreenState extends State<LodinScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFFFD363),
        body: Center(
            child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                child: Text(
                  "쿼카 알림장",
                  style: TextStyle(fontSize: 10, fontWeight: FontWeight.w500),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  // boxShadow: [
                  //   BoxShadow(
                  //     color: Colors.white,
                  //     blurRadius: 1.0,
                  //     spreadRadius: 1.0,
                  //   ),
                  // ],
                ),
                height: 300,
                width: 300,
                child: Column(
                  children: [
                    Text("로그인", style: TextStyle(
                      fontSize: 40, fontWeight: FontWeight.w500
                    )),
                  TextField(
                   // style: whitestyle,
                    decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                          borderSide:
                          BorderSide(color: Colors.white)),
                      hintText: "닉네임을 입력해주세요",
                      //hintStyle: whitestyle.copyWith(color: Colors.indigo),
                    ),
                 //   controller: name,
                    maxLength: 8,
                  ),
                TextField(
               // style: whitestyle,
                decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                      borderSide:
                      BorderSide(color: Colors.white)),
                  hintText: "닉네임을 입력해주세요",
                 // hintStyle: whitestyle.copyWith(color: Colors.indigo),
                ),
              //  controller: name,
                maxLength: 8,
              ),
                    Row(
                      children: [
                        ElevatedButton(onPressed: () {}, child: Text("로그인")),
                        ElevatedButton(onPressed: () {}, child: Text("회원가입"))
                      ],
                    )
                  ],
                ),
              ),
              Row(
                children: [
                  TextButton(onPressed: () {}, child: Image.asset('asset/image/naver.png',width: 30,)),
                  TextButton(onPressed: () {}, child: Image.asset('asset/image/kakao.png',width: 30,)),
                  TextButton(onPressed: () {}, child: Image.asset('asset/image/google.png',width: 30,))
                ],
              )
            ],
          ),
        )));
  }
}
