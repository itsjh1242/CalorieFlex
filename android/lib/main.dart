import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

// route
import 'calendar.dart';
import 'login/loginpage.dart';
import 'mainpage.dart';
// intl local time
import 'package:intl/date_symbol_data_local.dart';


void main() {
  initializeDateFormatting().then((_) => runApp(MyApp()));
}

class MyApp extends StatefulWidget{
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp>{

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'CalorieFlex',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'happysans',
      ),
      initialRoute: '/',
      routes: {
        // "/" Route로 이동하면, FirstScreen 위젯을 생성합니다.
        '/': (context) => const LoginPage(),
        // "/main" Route로 이동하면, MainPage 위젯을 생성합니다.
        '/main': (context) => const MainPage(),
        // Calendar
        '/main/calendar': (context) => const Calendar()
      },
    );
  }
}