import 'package:e3ada_4/notes_page.dart';
import 'package:flutter/material.dart';

class NotesEmptyPage extends StatefulWidget {
  const NotesEmptyPage({super.key});

  @override
  State<NotesEmptyPage> createState() => _NotesEmptyPageState();
}

class _NotesEmptyPageState extends State<NotesEmptyPage> {
  List<Map<String, String>> notes = [];

  TextEditingController titleController = TextEditingController();
  TextEditingController contextController = TextEditingController();

  void saveNote() {
    String title = titleController.text;
    String context = contextController.text;

    if (title.isNotEmpty && context.isNotEmpty) {
      setState(() {
        notes.add({'title': title, 'context': context});
      });
      titleController.clear();
      contextController.clear();
    }
  }

  int _selectedColorIndex = 0;
  List<Color> _colors = [
    Color(0XFFC161F9),
    Color(0XFFBCE369),
    Color(0XFFFFE4EE),
    Color(0XFFFFD68F),
    Color(0XFFB9CDFE),
    Color(0XFFFF8FB8),
    Color(0XFFF6E4FF),
    Color(0XFFD68FFF),
  ];

  void _onColorSelected(int index) {
    setState(() {
      _selectedColorIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(''),
          ),
          actions: <Widget>[
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
          ]),
      body: Container(
        color: _colors[_selectedColorIndex],
        child: Column(
          children: [
            TextField(
              controller: titleController,
              decoration: InputDecoration(
                hintText: 'العنوان',
                counterStyle: TextStyle(
                  fontFamily: 'Tajawal',
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
                hintTextDirection: TextDirection.rtl,
                contentPadding: EdgeInsets.only(right: 16),
              ),
            ),
            SizedBox(height: 10.0),
            Expanded(
              child: TextField(
                controller: contextController,
                maxLines: null,
                keyboardType: TextInputType.multiline,
                decoration: InputDecoration(
                  hintText: 'الموضوع',
                  hintTextDirection: TextDirection.rtl,
                  contentPadding: EdgeInsets.only(right: 16),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedColorIndex,
        onTap: _onColorSelected,
        items: _colors
            .map(
              (color) => BottomNavigationBarItem(
                icon: Container(
                  width: 24.0,
                  height: 24.0,
                  color: color,
                ),
                label: '',
              ),

            )
            .toList(),
            
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          saveNote();
              Navigator.push(
            context,
            MaterialPageRoute(builder: (builder) => MyNotePage()),
          );
        },
        child: Icon(Icons.save),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
