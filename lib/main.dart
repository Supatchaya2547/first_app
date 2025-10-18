import 'package:first_app/api_example/ApiExample.dart';
import 'package:first_app/api_example/ApiExampleList.dart';
import 'package:first_app/api_example/AssignmentWeek5.dart';
import 'package:first_app/api_example/firebase_test_crud.dart';
import 'package:first_app/api_pm25/api_pm25.dart';
import 'package:first_app/assignment1.dart';
import 'package:first_app/counter_widget.dart';
import 'package:first_app/form_example/form_example1.dart';
import 'package:first_app/greeting_widget.dart';
import 'package:first_app/navigation_example/first_page.dart';
import 'package:first_app/navigation_example/second_page.dart';
import 'package:first_app/page/profile_custom_widget.dart';
import 'package:first_app/page/simple_custom_widget.dart';
import 'package:first_app/week_3.dart';
import 'package:first_app/widget_ass.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 255, 255, 255),
        ),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
     
      home: ProfileCustomWidget(),
    );
  }
}



