import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class MoodTrakerPage extends StatefulWidget {
  @override
  _MoodTrakerPageState createState() => _MoodTrakerPageState();
}

class _MoodTrakerPageState extends State<MoodTrakerPage> {
  CalendarFormat _calendarFormat = CalendarFormat.month;
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;
  Map<DateTime, String> _feelingsMap = {};

  final List<charts.Series<UserCondition, String>> seriesList = [
    charts.Series<UserCondition, String>(
      id: '',
      data: [
        UserCondition('Jan', 80, '😐'),
        UserCondition('Feb', 75, '😞'),
        UserCondition('Mar', 85, '😍'),
        UserCondition('Apr', 90, '😇'),
        UserCondition('May', 95, '😡'),
        UserCondition('Jun', 85, '😐'),
        UserCondition('Jul', 80, '😐'),
        UserCondition('Aug', 85, '😍'),
        UserCondition('Sep', 90, '😇'),
        UserCondition('Oct', 95, '😡'),
        UserCondition('Nov', 85, '😍'),
        UserCondition('Dec', 80, '😐'),
      ],
      domainFn: (UserCondition condition, _) => condition.month,
      measureFn: (UserCondition condition, _) => condition.percentage,
      colorFn: (UserCondition condition, _) =>
          charts.ColorUtil.fromDartColor(_getColorForEmoji(condition.emoji)),
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(''),
        ),
        actions: <Widget>[
          Padding(padding: EdgeInsets.all(16)),
          Row(children: [
            Padding(
              padding: const EdgeInsets.only(top: 11),
              child: Text(
                'مزاجي',
                style: TextStyle(
                  fontFamily: 'Tajawal',
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
            ),
            IconButton(
              //padding: EdgeInsets.only(right: 30),
              icon: Icon(
                Icons.arrow_forward_ios,
                color: Colors.black,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ])
        ],
      ),
      body: ListView(
        children: [
          TableCalendar(
            firstDay: DateTime.utc(2021, 1, 1),
            lastDay: DateTime.utc(2030, 12, 31),
            focusedDay: _focusedDay,
            calendarFormat: _calendarFormat,
            selectedDayPredicate: (day) {
              return isSameDay(_selectedDay, day);
            },
            onDaySelected: (selectedDay, focusedDay) {
              setState(() {
                _selectedDay = selectedDay;
              });
              _showEmotionPopup(context, selectedDay);
            },
            onFormatChanged: (format) {
              setState(() {
                _calendarFormat = format;
              });
            },
            onPageChanged: (focusedDay) {
              _focusedDay = focusedDay;
            },
            calendarBuilders: CalendarBuilders(
              markerBuilder: (context, day, events) {
                if (_feelingsMap.containsKey(day)) {
                  return Container(
                    child: Positioned(
                      bottom: -13,
                      child: Text(
                        _feelingsMap[day]!,
                        style: TextStyle(
                          fontFamily: "Tajawal",
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  );
                }
                return SizedBox.shrink();
              },
            ),
          ),
          if (_selectedDay != null && _feelingsMap.containsKey(_selectedDay!))
            Padding(
              padding: const EdgeInsets.all(16.0),
            ),
          Padding(
            padding: const EdgeInsets.only(left: 300.0, right: 16),
            child: Text(
              'احصائيه',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                fontFamily: 'Tajawal',
              ),
            ),
          ),
          Center(
            child: Container(
              height: 380,
              padding:
                  EdgeInsets.only(bottom: 30, left: 30, right: 30, top: 30),
              child: UserConditionGraph(seriesList, animate: true),
            ),
          ),
        ],
      ),
    );
  }

  void _showEmotionPopup(BuildContext context, DateTime selectedDay) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Center(
              child: Text(
            'كيف تشعر اليوم؟',
            style: TextStyle(
              fontFamily: "Tajawal",
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          )),
          content: Wrap(
            alignment: WrapAlignment.center,
            children: [
              _buildEmojiButton('😐', selectedDay),
              _buildEmojiButton('😞', selectedDay),
              _buildEmojiButton('😍', selectedDay),
              _buildEmojiButton('😇', selectedDay),
              _buildEmojiButton('😡', selectedDay),
            ],
          ),
        );
      },
    );
  }

  Widget _buildEmojiButton(String emoji, DateTime selectedDay) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _feelingsMap[selectedDay] = emoji;
        });
        Navigator.pop(context);
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              emoji,
              style: TextStyle(fontSize: 27), // Adjust the font size as needed
            ),
          ],
        ),
      ),
    );
  }
}

class UserConditionGraph extends StatelessWidget {
  final List<charts.Series<UserCondition, String>> seriesList;
  final bool animate;

  UserConditionGraph(this.seriesList, {required this.animate});

  @override
  Widget build(BuildContext context) {
    return charts.BarChart(
      seriesList,
      animate: animate,
      barGroupingType: charts.BarGroupingType.grouped,
      behaviors: [charts.SeriesLegend()],
      domainAxis: charts.OrdinalAxisSpec(
        renderSpec: charts.SmallTickRendererSpec(
          labelStyle: charts.TextStyleSpec(
            fontSize: 10,
            color: charts.MaterialPalette.black,
          ),
        ),
      ),
      primaryMeasureAxis: charts.NumericAxisSpec(
        renderSpec: charts.GridlineRendererSpec(
          labelStyle: charts.TextStyleSpec(
            fontSize: 10,
            color: charts.MaterialPalette.black,
          ),
          lineStyle: charts.LineStyleSpec(
            color: charts.MaterialPalette.black,
          ),
        ),
      ),
    );
  }
}

class UserCondition {
  final String month;
  final int percentage;
  final String emoji;

  UserCondition(this.month, this.percentage, this.emoji);
}

Color _getColorForEmoji(String emoji) {
  switch (emoji) {
    case '😐':
      return Color(0xffFFB73E);
    case '😞':
      return Colors.black;
    case '😍':
      return Color(0xffD68FFF);
    case '😇':
      return Color(0xffFE609B);
    case '😡':
      return Color(0xffBA1A1A);
    default:
      return Colors.green;
  }
}
