import 'package:flutter/material.dart';
import 'package:flutter_blog/ui/pages/date/widget/main_calendar.dart';


class DatePage extends StatefulWidget {
  const DatePage({Key? key}) : super(key: key);

  @override
  State<DatePage> createState() => _MyCalendarScreenState();
}

class _MyCalendarScreenState extends State<DatePage> {
// 선택된 날짜를 저장하는 변수
  DateTime selectedDate = DateTime.utc(
    DateTime.now().year,
    DateTime.now().month,
    DateTime.now().day,
  );

  @override
  Widget build(BuildContext context) {
// Scaffold를 사용하여 화면의 구조를 정의
    return Scaffold(
        appBar: AppBar(
          title: Text('Diary'), // 상단 앱 바에 표시될 타이틀 설정
        ),
        body: MainCalendar(
          selectedDate: selectedDate, // MainCalendar에 현재 선택된 날짜 전달
          onDaySelected: onDaySelected, // MainCalendar에서 날짜 선택 시 호출될 콜백 함수 설정
        ));
  }

// MainCalendar에서 호출되는 콜백 함수로, 선택된 날짜를 업데이트
  void onDaySelected(DateTime selectedDate, DateTime focusedDate) {
    setState(() {
      this.selectedDate = selectedDate;
    });
  }
}
