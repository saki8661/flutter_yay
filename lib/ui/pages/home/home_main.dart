import 'package:flutter/material.dart';
import 'package:flutter_blog/_core/constants/color.dart';
import 'package:flutter_blog/_core/constants/icon.dart';
import 'package:flutter_blog/_core/constants/size.dart';

class HomeMain extends StatelessWidget {
  const HomeMain({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kBackgroundColor,
        title: Image.asset(
          "assets/images/logo.png",
          height: 40,
        ),
        actions: [
          IconButton(onPressed: () {}, icon: iconSearch()),
          SizedBox(width: gapMedium),
        ],
        elevation: 0,
      ),
      body: Container(
        color: kBackgroundColor,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: ListView(
            children: [
              Container(
                child: Text("# 캠핑을 위한 모든 것, 야영에서 함께"),
              ),
              SizedBox(height: gapLarge),
              Container(
                width: 100,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.grey, // 버튼의 배경색
                  borderRadius: BorderRadius.circular(20), // 둥근 테두리 설정
                ),
                child: Text(
                  'Click',
                  style: TextStyle(
                    color: Colors.white, // 글자의 색상
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
