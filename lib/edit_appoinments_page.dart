import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class EditAppoinmentsPage extends StatefulWidget {
  const EditAppoinmentsPage({super.key});

  @override
  State<EditAppoinmentsPage> createState() => _EditAppoinmentsPageState();
}

class _EditAppoinmentsPageState extends State<EditAppoinmentsPage> {
  CalendarFormat _calendarFormat = CalendarFormat.month;
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;
  TimeOfDay? _selectedTime;
  Map<DateTime, String> _feelingsMap = {};
  List<String> _selectedAppointments = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              _showTimePicker(context);
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
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Center(
              child: Container(
                child: Text(
                  'اضف الان عن طريق الضغط علي اليوم الذي تريد تحديد معاد فيه',
                  style: TextStyle(
                    color: Color(0XFFD68FFF),
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Tajawal',
                  ),
                  textDirection: TextDirection.rtl,
                  ),
              ),
            ),
          ),
          if (_selectedDay != null && _feelingsMap.containsKey(_selectedDay!))
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Selected date and time: ${_selectedDay!.toString()} ${_selectedTime!.format(context)}',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
          if (_selectedAppointments.isNotEmpty)
            ListView.builder(
              shrinkWrap: true,
              itemCount: _selectedAppointments.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(
                      '${_selectedAppointments[index]}'),
                  trailing: IconButton(
                    icon: Icon(Icons.delete),
                    onPressed: () {
                      setState(() {
                        _selectedAppointments.removeAt(index);
                      });
                    },
                  ),
                );
              },
            ),
        ],
      ),
    );
  }

  Future<void> _showTimePicker(BuildContext context) async {
    final TimeOfDay? selectedTime = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );

    if (selectedTime != null) {
      setState(() {
        _selectedTime = selectedTime;
        _selectedAppointments.add(          
            'Date: ${_selectedDay!.toString()},''\n'
            'Time: ${_selectedTime!.format(context)}');
      });
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
              'Selected time: ${_selectedTime!.format(context)} for ${_selectedDay!.toString()}'),
        ),
      );
    }
  }
}
