import 'package:flutter/material.dart';
import 'package:flutter_blog/ui/pages/date/date_range_picker.dart';
import 'package:flutter_blog/ui/pages/home/home_main.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

void main() {
  runApp(ProviderScope(child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DateRangePicker(),
    );
  }
}
