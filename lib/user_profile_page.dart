import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class UserProfilePage extends StatefulWidget {
  const UserProfilePage({super.key});

  @override
  State<UserProfilePage> createState() => _UserProfilePageState();
}

class _UserProfilePageState extends State<UserProfilePage> {
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
              padding: const EdgeInsets.only(
                  left: 16, right: 16, top: 10, bottom: 8),
              child: Text(
                'الملف الشخصي',
                style: TextStyle(
                  fontFamily: 'Tajawal',
                  fontWeight: FontWeight.bold,
                  fontSize: 23,
                ),
              ),
            ),
            IconButton(
              padding: EdgeInsets.only(right: 30),
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
      body: Container(
        padding: EdgeInsets.only(left: 16, right: 25, top: 16),
        child: ListView(
          //crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 320),
              child: Text(
                'الاسم',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Tajawal',
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 4, vertical: 12),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(9)),
                      borderSide: BorderSide(
                        color: Color(0xffAFA9AE),
                      )),
                  hintText: 'tarek',
                  hintTextDirection: TextDirection.rtl,
                  contentPadding: EdgeInsets.only(left: 290, right: 16),
                  prefixIcon: Icon(
                    Icons.person_outline,
                    color: Color(0xffAFA9AE),
                  ),
                  fillColor: Color(0xffAFA9AE),
                  constraints: BoxConstraints(
                    maxHeight: 40,
                    minWidth: 25,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 250),
              child: Text(
                'البريد الالكتروني',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Tajawal',
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 4, vertical: 12),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(9)),
                      borderSide: BorderSide(
                        color: Color(0xffAFA9AE),
                      )),
                  hintText: 'tarek.mohammedd@gmail.com',
                  hintTextDirection: TextDirection.rtl,
                  contentPadding: EdgeInsets.only(left: 290, right: 16),
                  prefixIcon: Icon(
                    Icons.email_outlined,
                    color: Color(0xffAFA9AE),
                  ),
                  fillColor: Color(0xffAFA9AE),
                  constraints: BoxConstraints(
                    maxHeight: 40,
                    minWidth: 25,
                  ),
                ),
              ),
            ),
            Padding(
               padding: const EdgeInsets.only(left: 275),
              child: Text(
                'تاريخ الميلاد',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Tajawal',
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 4, vertical: 12),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(9)),
                      borderSide: BorderSide(
                        color: Color(0xffAFA9AE),
                      )),
                  hintText: '11/11/2001',
                  hintTextDirection: TextDirection.rtl,
                  contentPadding: EdgeInsets.only(left: 290, right: 16),
                  prefixIcon: Icon(
                    Icons.calendar_today_outlined,
                    color: Color(0xffAFA9AE),
                    size: 22,
                  ),
                  
                  fillColor: Color(0xffAFA9AE),
                  constraints: BoxConstraints(
                    maxHeight: 40,
                    minWidth: 25,
                  ),
                ),
              ),
            ),
            Padding(
               padding: const EdgeInsets.only(left: 235),
              child: Text(
                'متابعه التقدم',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Tajawal',
                ),
              ),
            ),
            Center(
              child: Container(
                height: 400,
                padding: EdgeInsets.all(16.0),
                child: UserConditionGraph(seriesList, animate: true),
              ),
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
