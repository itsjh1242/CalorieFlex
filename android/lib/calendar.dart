import 'package:flutter/material.dart';
// 캘린더
import 'package:table_calendar/table_calendar.dart';


class Calendar extends StatefulWidget{
  const Calendar({Key? key}) : super(key: key);


  @override
  _CalendarState createState() => _CalendarState();
}

class _CalendarState extends State<Calendar>{
  @override
  Widget build(BuildContext context) {
    return Card(
      child: TableCalendar(
        focusedDay: DateTime.now(),
        firstDay: DateTime.utc(2022,1,1),
        lastDay: DateTime.utc(2032,1,1),
        locale: 'ko-KR',
        headerStyle: const HeaderStyle(
          formatButtonVisible: false,
          titleCentered: true,
          // leftChevronVisible: false,
          // rightChevronVisible: false,
        ),
        onDaySelected: (selectedDay, focusedDay){
          Navigator.pushNamed(context, '/main', arguments: selectedDay);
        },
      ),
    );
  }

}
